package dao;

import model.PhoneNumber;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.PreparedBatch;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PhoneNumberDao extends BaseDao {

    private static final Map<Integer, PhoneNumber> data = new HashMap<>();

    static {
        data.put(1, new PhoneNumber(1, "Hotline 1", "0901234567"));
        data.put(2, new PhoneNumber(2, "Hotline 2", "0912345678"));
        data.put(3, new PhoneNumber(3, "Hotline 3", "0987654321"));
        data.put(4, new PhoneNumber(4, "Hotline 4", "0123456789"));
    }

    public void insert(List<PhoneNumber> phones) {
        Jdbi jdbi = get();
        jdbi.useHandle(handle -> {
            PreparedBatch batch = handle.prepareBatch(
                    "INSERT INTO phone_number (id, titlePhone, phoneNumber) VALUES (:id, :titlePhone, :phoneNumber)"
            );
            phones.forEach(phone -> batch.bindBean(phone).add());
            batch.execute();
        });
    }

    public List<PhoneNumber> getListPhones() {
        return new ArrayList<>(data.values());
    }

    // Lấy 1 PhoneNum từ DB theo id
    public PhoneNumber getPhone(int id) {
        return get().withHandle(handle ->
                handle.createQuery("SELECT * FROM phone_number WHERE id = :id")
                        .bind("id", id)
                        .mapToBean(PhoneNumber.class)
                        .findOne()
                        .orElse(null)
        );
    }

    // Lấy tất cả PhoneNum từ DB
    public List<PhoneNumber> getAllPhones() {
        return get().withHandle(handle ->
                handle.createQuery("SELECT * FROM phone_number")
                        .mapToBean(PhoneNumber.class)
                        .list()
        );
    }

    // Test insert
    public static void main(String[] args) {
        PhoneNumberDao dao = new PhoneNumberDao();
        dao.insert(dao.getListPhones());
        System.out.println("Insert OK");
    }
}

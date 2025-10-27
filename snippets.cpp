auto db = firestore::Firestore::Create(app).get();

auto result = db.Collection("cities")
                    .Where("capital", "==", true)
                    .Get()
                    .get();

for (const auto& doc : result.documents()) {
  std::cout << doc.id() << " => " << doc.GetData() << std::endl;
}

# Note: Use of CollectionRef stream() is prefered to get()
docs = (
    db.collection("cities")
    .where(filter=FieldFilter("capital", "==", True))
    .stream()
)

async for doc in docs:
    print(f"{doc.id} => {doc.to_dict()}")

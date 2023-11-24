//Creando data schema
use nearplaces

db.createCollection("location", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            required: ["city", "id", "location_name", "region", "address"],
            properties: {
                city: {
                    bsonType: "string",
                    description: "La ciudad debe ser un string y es requerida"
                },
                id: {
                    bsonType: "int",
                    description: "El id debe ser un int y es requerido"
                },
                location_name: {
                    bsonType: "string",
                    description: "La ubicación debe ser un string y es requerida"
                },
                region: {
                    bsonType: "string",
                    description: "La región debe ser un string y es requerida"
                },
                address: {
                    bsonType: "string",
                    description: "La dirección debe ser un string y es requerida"
                }
            }
        }
    }
})

db.createCollection("notifications", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            required: ["id", "state", "type"],
            properties: {
                id: {
                    bsonType: "int",
                    description: "El id debe ser un int y es requerido"
                },
                state: {
                    bsonType: "bool",
                    description: "El estado debe ser un booleano y es requerido"
                },
                type: {
                    bsonType: "string",
                    description: "El tipo debe ser un string y es requerido"
                }
            }
        }
    }
})

db.createCollection("user", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            required: ["age", "gender", "name", "notification_id", "password"],
            properties: {
                age: {
                    bsonType: "int",
                    description: "La edad debe ser un int y es requerida"
                },
                gender: {
                    enum: ["M", "F"],
                    description: "El género debe ser M o F y es requerido"
                },
                name: {
                    bsonType: "string",
                    description: "El nombre debe ser un string y es requerido"
                },
                notification_id: {
                    bsonType: "int",
                    description: "El id de la notificación debe ser un int y es requerido"
                },
                password: {
                    bsonType: "string",
                    description: "La contraseña debe ser un string y es requerida"
                }
            }
        }
    }
})

db.createCollection("event", {
    validator: {
        $jsonSchema: {
            bsonType: "object",
            required: ["category_id", "cost", "id", "name", "ticket_link", "date", "location_id", "time", "description"],
            properties: {
                category_id: {
                    bsonType: "int",
                    description: "El id de la categoría debe ser un int y es requerido"
                },
                cost: {
                    bsonType: "double",
                    description: "El costo debe ser un double y es requerido"
                },
                id: {
                    bsonType: "int",
                    description: "El id debe ser un int y es requerido"
                },
                name: {
                    bsonType: "string",
                    description: "El nombre debe ser un string y es requerido"
                },
                ticket_link: {
                    bsonType: "string",
                    description: "El link del ticket debe ser un string y es requerido"
                },
                date: {
                    bsonType: "date",
                    description: "La fecha debe ser un date y es requerida"
                },
                location_id: {
                    bsonType: "int",
                    description: "El id de la ubicación debe ser un int y es requerido"
                },
                time: {
                    bsonType: "string",
                    description: "La hora debe ser un string y es requerida"
                },
                description: {
                    bsonType: "string",
                    description: "La descripción debe ser un string y es requerida"
                }
            }
        }
    }
})

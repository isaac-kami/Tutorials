resource "oci_objectstorage_bucket" "mds_bucket" {

    compartment_id = oci_identity_compartment.MySqlOciCompartment.id
    name = var.name_bucket
    namespace = var.bucket_namespace
    storage_tier = "Standard"
}

#resource "oci_objectstorage_object" "test_object" {

#    bucket = oci_objectstorage_bucket.mds_bucket.name
#    namespace = var.bucket_namespace

#    object = var.bucket_object

#    storage_tier = "Standard"
#}

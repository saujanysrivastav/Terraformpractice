provider "aws"{
    region=var.myregion
}

resource "aws_dynamodb_table" "mydynamodbtable"{

    billing_mode="PROVISIONED"
    hash_key="userId"


    read_capacity=10
    write_capacity=10
    name=var.dynamotable
    attribute{
        name="userId"
        type="S"
    }

}
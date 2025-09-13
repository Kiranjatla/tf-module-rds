#resource "null_resource" "load-schema" {
#  depends_on = [aws_rds_cluster.default]
#
#  provisioner "local-exec" {
#    command = <<EOF
#curl -s -L -o /tmp/mysql.zip "https://github.com/roboshop-devops-project/mysql/archive/main.zip"
#cd /tmp
#unzip -o mysql.zip
#cd mysql-main
#curl -L -O https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem
#mongosh dev-db1-roboshop-docdb.cluster-c0xiwoigwrqk.us-east-1.docdb.amazonaws.com:27017 --tls --tlsCAFile global-bundle.pem --retryWrites=false --username ${local.RDS_USER} --password ${local.RDS_PASS} < catalogue.js
#mongosh dev-db1-roboshop-docdb.cluster-c0xiwoigwrqk.us-east-1.docdb.amazonaws.com:27017 --tls --tlsCAFile global-bundle.pem --retryWrites=false --username ${local.RDS_USER} --password ${local.RDS_PASS} < users.js
#EOF
#  }
#
#}
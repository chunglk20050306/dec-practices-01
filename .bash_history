hostnamectl set-hostname chunglk-basenode
sudo hostnamectl set-hostname chunglk-basenode
exit
sudo apt update -y
sudo apt install docker.io -y
sudo usermod -aG docker ubuntu
sudo su - ubuntu
cd
pwd
cd .kube/
ll -a
mv config config.orig
vi config
cat config
kubectl get nodes
ls -l
more config.orig 
vim config.orig 
vim config
kubectl get nodes
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl config set-context --current --namespace argocd
kubectl get services
kubectl -n argocd patch svc argocd-server --type='json' -p '[{"op":"replace","path":"/spec/type","value":"NodePort"}]'
sudo curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo chmod +x /usr/local/bin/argocd
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
kubectl get services
kubectl get pods
kubectl get services
telnet 10.108.140.192 80
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
cd /home/ubuntu/lession12-gitops/github-repo/demo-app
git  remote get-url origin
git status
git commit -m "init repo"
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git push origin -u master
ls -l
more Dockerfile 
git  remote get-url origin
git status
git add .
git commit -m "init repo"
git push origin -u master

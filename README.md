# bertBurner
serve PyTorch BERT in production with Scala (by JIT compile)

## requirements
### for serving
+ cmake == 3.13.3
+ sbt == 1.2.8
+ scala == 2.12.8
+ java == 1.8.0
+ wget == 1.20.1
### for verify in Python
+ python == 3.7.0
+ torch = 1.0.0

## run server
1. clone repo
```
git clone https://github.com/hyoungseok/bertBurner.git
cd bertBurner
```

2. setup ```libtorch``` with respect to your OS

on Mac
```
./setup_libtorch_macos.sh
```

on Ubuntu
```
./setup_libtorch_ubuntu.sh
```

3. run ```setup_common.sh```
```
./setup_common.sh
```
after running the script, you may got the followings under the project directory
+ ```burner``` directory
+ ```libModel.dylib``` or ```libModel.so```

4. move your JIT compiled BERT Model to project directory
```
mv /your/compiled/BERT/model.pth ./bert_model.pth
```

5. edit ```burner.config``` file with your actual configurations
```
vi burner.config
```

6. run server
```
./run_burner.sh
```

after launching the server, you may got the ```logs``` directory under the project directory

.class Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;
.super Ljava/lang/Object;
.source "WatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    iput-object p2, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->val$data:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 71
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "send data to watch, data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$000(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$100(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->val$address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$002(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$200(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$200(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$000(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v2}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$300(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$202(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$200(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$200(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$400(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$000(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;->onDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 127
    :cond_3
    :goto_1
    return-void

    .line 82
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connect to watch failed, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    iget-object v2, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$000(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "createRfcommSocket"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v3}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$000(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;

    invoke-static {v2, v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$202(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 89
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$200(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "using port connect to watch failed, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 121
    :catch_2
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$400(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$400(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$000(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;->onDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    throw v0

    .line 99
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$200(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$502(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 102
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$200(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$602(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 104
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$600(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->val$data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 106
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 108
    iget-object v2, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v2}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$500(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 110
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 111
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$400(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/samsung/WatchManager$1;->this$0:Lcom/alipay/security/mobile/barcode/samsung/WatchManager;

    invoke-static {v1}, Lcom/alipay/security/mobile/barcode/samsung/WatchManager;->access$400(Lcom/alipay/security/mobile/barcode/samsung/WatchManager;)Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/security/mobile/barcode/samsung/WatchCallback;->onGetDataFromDevice(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

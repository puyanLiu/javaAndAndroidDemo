.class Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;
.super Ljava/lang/Thread;
.source "BTManager.java"


# instance fields
.field private mSocketType:Ljava/lang/String;

.field private final mmDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mmSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;Z)V
    .locals 3

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    .line 203
    const/4 v1, 0x0

    .line 204
    if-eqz p4, :cond_0

    const-string/jumbo v0, "Secure"

    :goto_0
    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mSocketType:Ljava/lang/String;

    .line 209
    if-eqz p4, :cond_1

    .line 210
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    :goto_1
    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 218
    return-void

    .line 204
    :cond_0
    const-string/jumbo v0, "Insecure"

    goto :goto_0

    .line 212
    :cond_1
    :try_start_1
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Socket Type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "create() failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "close() of connect "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " socket failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BEGIN mConnectThread SocketType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ConnectThread"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->setName(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$200(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    monitor-enter v1

    .line 246
    :try_start_1
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$402(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;)Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;

    .line 247
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    iget-object v2, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$500(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 235
    :try_start_2
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    :goto_1
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$300(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unable to close() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectThread;->mSocketType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " socket during connection failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

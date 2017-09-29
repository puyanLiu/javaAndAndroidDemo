.class Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;
.super Ljava/lang/Thread;
.source "BTManager.java"


# instance fields
.field private final mmDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mmInStream:Ljava/io/InputStream;

.field private final mmOutStream:Ljava/io/OutputStream;

.field private final mmSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 272
    iput-object p1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 273
    iput-object p3, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 275
    iput-object p2, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    .line 281
    :try_start_0
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    :try_start_1
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 284
    :goto_0
    iput-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    .line 288
    iput-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    .line 289
    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    const/4 v7, 0x4

    .line 292
    new-array v4, v2, [B

    :goto_0
    move v0, v2

    move v3, v1

    .line 300
    :goto_1
    if-lez v0, :cond_0

    .line 301
    :try_start_0
    iget-object v5, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v5, v4, v3, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 311
    add-int/2addr v3, v5

    .line 312
    sub-int/2addr v0, v5

    .line 313
    goto :goto_1

    .line 306
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    iget-object v1, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$600(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 309
    return-void

    .line 315
    :cond_0
    new-array v3, v7, [B

    move v0, v1

    .line 316
    :goto_2
    if-ge v0, v7, :cond_1

    .line 317
    add-int/lit8 v5, v0, 0x8

    aget-byte v5, v4, v5

    aput-byte v5, v3, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-static {v0, v3}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$700(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;[B)I

    move-result v3

    .line 319
    new-array v5, v7, [B

    move v0, v1

    .line 322
    :goto_3
    if-ge v0, v7, :cond_2

    .line 323
    add-int/lit8 v6, v0, 0xc

    aget-byte v6, v4, v6

    aput-byte v6, v5, v0

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    invoke-static {v0, v5}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$700(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;[B)I

    move-result v0

    .line 325
    iget-object v5, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->this$0:Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;

    iget-object v6, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-static {v5, v6, v3, v0}, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;->access$800(Lcom/alipay/security/mobile/barcode/yunoswear/BTManager;Ljava/io/InputStream;II)V

    goto :goto_0
.end method

.method public write([B)Z
    .locals 2

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/barcode/yunoswear/BTManager$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "write buffer length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    const/4 v0, 0x1

    .line 351
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

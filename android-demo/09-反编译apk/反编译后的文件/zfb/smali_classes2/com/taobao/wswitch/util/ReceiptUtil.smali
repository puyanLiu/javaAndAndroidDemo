.class public Lcom/taobao/wswitch/util/ReceiptUtil;
.super Ljava/lang/Object;
.source "ReceiptUtil.java"


# static fields
.field private static DIR:Ljava/lang/String; = null

.field private static FILE:Ljava/lang/String; = null

.field private static final MAX_NUM:I = 0xa

.field private static inited:Z

.field private static receiptInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/ReceiptInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "wswitch3"

    sput-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->DIR:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "/receipt.d"

    sput-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->FILE:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/wswitch/util/ReceiptUtil;->inited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addReceipt(Lcom/taobao/wswitch/model/ReceiptInfo;)V
    .locals 3

    .prologue
    .line 131
    const-class v1, Lcom/taobao/wswitch/util/ReceiptUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/taobao/wswitch/util/ReceiptUtil;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 135
    :cond_1
    :try_start_1
    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    .line 138
    :cond_2
    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_3

    .line 139
    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_3
    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/taobao/wswitch/util/ReceiptUtil;->encode(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/wswitch/util/ReceiptUtil;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clear()V
    .locals 2

    .prologue
    .line 147
    const-class v1, Lcom/taobao/wswitch/util/ReceiptUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/taobao/wswitch/util/ReceiptUtil;->inited:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 150
    :cond_1
    :try_start_1
    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/taobao/wswitch/util/ReceiptUtil;->encode(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/wswitch/util/ReceiptUtil;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static encode(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/ReceiptInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 107
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 111
    :cond_1
    const/16 v0, 0xa

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ReceiptInfo;

    .line 114
    if-lez v1, :cond_3

    .line 115
    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 119
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_2
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getV()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getT()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getI()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ReceiptInfo;->getE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v0, v1, -0x1

    :goto_2
    move v1, v0

    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static declared-synchronized getAndClearReceiptInfoListInJson()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 23
    const-class v2, Lcom/taobao/wswitch/util/ReceiptUtil;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/taobao/wswitch/util/ReceiptUtil;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 27
    :cond_1
    :try_start_1
    sget-object v1, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 32
    :try_start_2
    sget-object v1, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {}, Lcom/taobao/wswitch/util/ReceiptUtil;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 34
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 36
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 41
    const-class v3, Lcom/taobao/wswitch/util/ReceiptUtil;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Lcom/taobao/wswitch/util/ReceiptUtil;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 45
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/taobao/wswitch/util/ReceiptUtil;->inited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wswitch3_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->DIR:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->DIR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/taobao/wswitch/util/ReceiptUtil;->FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->FILE:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :goto_1
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->FILE:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 62
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    .line 63
    const-string/jumbo v2, ""

    .line 64
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v0, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 66
    const/16 v0, 0xc8

    .line 67
    :goto_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_4

    .line 68
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 70
    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 74
    array-length v6, v5

    const/4 v7, 0x5

    if-lt v6, v7, :cond_3

    .line 75
    new-instance v6, Lcom/taobao/wswitch/model/ReceiptInfo;

    invoke-direct {v6}, Lcom/taobao/wswitch/model/ReceiptInfo;-><init>()V

    .line 76
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/taobao/wswitch/model/ReceiptInfo;->setG(Ljava/lang/String;)V

    .line 77
    const/4 v7, 0x1

    aget-object v7, v5, v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/taobao/wswitch/util/EntityHelper;->toLong(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/taobao/wswitch/model/ReceiptInfo;->setV(Ljava/lang/Long;)V

    .line 78
    const/4 v7, 0x2

    aget-object v7, v5, v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/taobao/wswitch/util/EntityHelper;->toLong(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/taobao/wswitch/model/ReceiptInfo;->setT(Ljava/lang/Long;)V

    .line 79
    const/4 v7, 0x3

    aget-object v7, v5, v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/taobao/wswitch/util/EntityHelper;->toLong(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/taobao/wswitch/model/ReceiptInfo;->setI(Ljava/lang/Long;)V

    .line 80
    const/4 v7, 0x4

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Lcom/taobao/wswitch/model/ReceiptInfo;->setE(Ljava/lang/String;)V

    .line 82
    sget-object v5, Lcom/taobao/wswitch/util/ReceiptUtil;->receiptInfoList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    move v9, v2

    move-object v2, v0

    move v0, v9

    .line 84
    goto :goto_2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    :try_start_6
    const-string/jumbo v1, "ConfigContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mkdir "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/taobao/wswitch/util/ReceiptUtil;->DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/util/LogUtil;->Logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 89
    :cond_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 97
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 101
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 85
    :catch_2
    move-exception v0

    .line 86
    :try_start_9
    const-string/jumbo v2, "ConfigContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "decode file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/taobao/wswitch/util/ReceiptUtil;->FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/wswitch/util/LogUtil;->Logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 89
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    .line 92
    :catch_3
    move-exception v0

    goto :goto_3

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 91
    :goto_4
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 97
    :catch_4
    move-exception v0

    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_0

    .line 99
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 101
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 94
    :catch_6
    move-exception v0

    move-object v1, v2

    .line 95
    :goto_6
    :try_start_e
    const-string/jumbo v2, "ConfigContainer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 97
    if-eqz v1, :cond_0

    .line 99
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    .line 101
    :catch_7
    move-exception v0

    goto/16 :goto_0

    .line 97
    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_5

    .line 99
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 101
    :cond_5
    :goto_8
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 92
    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v2

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_8

    .line 97
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 94
    :catch_b
    move-exception v0

    goto :goto_6

    .line 97
    :catch_c
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :cond_6
    move v9, v2

    move-object v2, v0

    move v0, v9

    goto/16 :goto_2
.end method

.method private static declared-synchronized write(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 157
    const-class v3, Lcom/taobao/wswitch/util/ReceiptUtil;

    monitor-enter v3

    :try_start_0
    sget-boolean v0, Lcom/taobao/wswitch/util/ReceiptUtil;->inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 160
    :cond_1
    if-nez p0, :cond_2

    .line 161
    :try_start_1
    const-string/jumbo p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    :cond_2
    const/4 v2, 0x0

    .line 165
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v0, Lcom/taobao/wswitch/util/ReceiptUtil;->FILE:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :try_start_3
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 168
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 172
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 170
    :goto_1
    :try_start_5
    const-string/jumbo v2, "ConfigContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "save file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/taobao/wswitch/util/ReceiptUtil;->FILE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 172
    if-eqz v1, :cond_0

    .line 174
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 176
    :catch_2
    move-exception v0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 174
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 176
    :cond_3
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 157
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 172
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 169
    :catch_4
    move-exception v0

    goto :goto_1
.end method

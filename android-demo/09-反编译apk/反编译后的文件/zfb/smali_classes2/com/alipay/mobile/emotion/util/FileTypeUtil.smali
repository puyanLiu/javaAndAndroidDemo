.class public Lcom/alipay/mobile/emotion/util/FileTypeUtil;
.super Ljava/lang/Object;
.source "FileTypeUtil.java"


# static fields
.field public static final mFileTypes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 14
    sput-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "jpg"

    const-string/jumbo v2, "FFD8FF"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "png"

    const-string/jumbo v2, "89504E47"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "gif"

    const-string/jumbo v2, "47494638"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "tif"

    const-string/jumbo v2, "49492A00"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "bmp"

    const-string/jumbo v2, "424D"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "dwg"

    const-string/jumbo v2, "41433130"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "html"

    const-string/jumbo v2, "68746D6C3E"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "rtf"

    const-string/jumbo v2, "7B5C727466"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "xml"

    const-string/jumbo v2, "3C3F786D6C"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "zip"

    const-string/jumbo v2, "504B0304"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "rar"

    const-string/jumbo v2, "52617221"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "psd"

    const-string/jumbo v2, "38425053"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "eml"

    const-string/jumbo v2, "44656C69766572792D646174653A"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "dbx"

    const-string/jumbo v2, "CFAD12FEC5FD746F"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "pst"

    const-string/jumbo v2, "2142444E"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "xls"

    const-string/jumbo v2, "D0CF11E0"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "doc"

    const-string/jumbo v2, "D0CF11E0"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "mdb"

    const-string/jumbo v2, "5374616E64617264204A"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "wpd"

    const-string/jumbo v2, "FF575043"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "eps"

    const-string/jumbo v2, "252150532D41646F6265"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "ps"

    const-string/jumbo v2, "252150532D41646F6265"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "pdf"

    const-string/jumbo v2, "255044462D312E"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "qdf"

    const-string/jumbo v2, "AC9EBD8F"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "pwl"

    const-string/jumbo v2, "E3828596"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "wav"

    const-string/jumbo v2, "57415645"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "avi"

    const-string/jumbo v2, "41564920"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "ram"

    const-string/jumbo v2, "2E7261FD"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "rm"

    const-string/jumbo v2, "2E524D46"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "mpg"

    const-string/jumbo v2, "000001BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "mov"

    const-string/jumbo v2, "6D6F6F76"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "asf"

    const-string/jumbo v2, "3026B2758E66CF11"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v1, "mid"

    const-string/jumbo v2, "4D546864"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    .line 92
    :goto_1
    array-length v3, p0

    if-lt v0, v3, :cond_2

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_2
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getFileHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 67
    .line 70
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    const/16 v2, 0x32

    :try_start_1
    new-array v2, v2, [B

    .line 72
    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 73
    invoke-static {v2}, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->bytesToHexString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 76
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 83
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    .line 76
    :goto_1
    if-eqz v1, :cond_0

    .line 78
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v1

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 76
    :goto_2
    if-eqz v1, :cond_1

    .line 78
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 82
    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_0

    .line 75
    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static getFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 49
    invoke-static {p0}, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->getFileHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 51
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 52
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static isGif(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->getFileHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->mFileTypes:Ljava/util/TreeMap;

    const-string/jumbo v2, "gif"

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

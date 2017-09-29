.class public Lmtopsdk/mtop/upload/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileCRC32(Ljava/io/File;)J
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 60
    const-wide/16 v0, 0x0

    .line 64
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :try_start_1
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v2, v4, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    const/16 v3, 0x80

    :try_start_2
    new-array v3, v3, [B

    .line 67
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v5

    if-gez v5, :cond_0

    .line 70
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/zip/Checksum;->getValue()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 75
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 83
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 91
    :cond_1
    :goto_1
    return-wide v0

    .line 79
    :catch_0
    move-exception v3

    const-string/jumbo v3, "mtopsdk.FileUtil"

    const-string/jumbo v4, "close fis error"

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :catch_1
    move-exception v2

    const-string/jumbo v2, "mtopsdk.FileUtil"

    const-string/jumbo v3, "close cis error"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :catch_2
    move-exception v2

    move-object v2, v3

    :goto_2
    :try_start_5
    const-string/jumbo v4, "mtopsdk.FileUtil"

    const-string/jumbo v5, "file is invald,getFileCRC32 error"

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 75
    if-eqz v3, :cond_2

    .line 77
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 83
    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    .line 85
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 87
    :catch_3
    move-exception v2

    const-string/jumbo v2, "mtopsdk.FileUtil"

    const-string/jumbo v3, "close cis error"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :catch_4
    move-exception v3

    const-string/jumbo v3, "mtopsdk.FileUtil"

    const-string/jumbo v4, "close fis error"

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 75
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_4
    if-eqz v4, :cond_3

    .line 77
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 83
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 85
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 88
    :cond_4
    :goto_6
    throw v0

    .line 79
    :catch_5
    move-exception v1

    const-string/jumbo v1, "mtopsdk.FileUtil"

    const-string/jumbo v3, "close fis error"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 87
    :catch_6
    move-exception v1

    const-string/jumbo v1, "mtopsdk.FileUtil"

    const-string/jumbo v2, "close cis error"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 75
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_4

    .line 73
    :catch_7
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :catch_8
    move-exception v3

    move-object v3, v4

    goto :goto_2
.end method

.method public static getFileCRC32(Ljava/lang/String;)J
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 19
    const-wide/16 v0, 0x0

    .line 23
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v2, v4, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    const/16 v3, 0x80

    :try_start_2
    new-array v3, v3, [B

    .line 26
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v5

    if-gez v5, :cond_0

    .line 29
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/zip/Checksum;->getValue()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 34
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 42
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 50
    :cond_1
    :goto_1
    return-wide v0

    .line 38
    :catch_0
    move-exception v3

    const-string/jumbo v3, "mtopsdk.FileUtil"

    const-string/jumbo v4, "close fis error"

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :catch_1
    move-exception v2

    const-string/jumbo v2, "mtopsdk.FileUtil"

    const-string/jumbo v3, "close cis error"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :catch_2
    move-exception v2

    move-object v2, v3

    :goto_2
    :try_start_5
    const-string/jumbo v4, "mtopsdk.FileUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "filePath="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " invalid,getFileCRC32 error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 34
    if-eqz v3, :cond_2

    .line 36
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 42
    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    .line 44
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 46
    :catch_3
    move-exception v2

    const-string/jumbo v2, "mtopsdk.FileUtil"

    const-string/jumbo v3, "close cis error"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :catch_4
    move-exception v3

    const-string/jumbo v3, "mtopsdk.FileUtil"

    const-string/jumbo v4, "close fis error"

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 34
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_4
    if-eqz v3, :cond_3

    .line 36
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 42
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 44
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 47
    :cond_4
    :goto_6
    throw v0

    .line 38
    :catch_5
    move-exception v1

    const-string/jumbo v1, "mtopsdk.FileUtil"

    const-string/jumbo v3, "close fis error"

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 46
    :catch_6
    move-exception v1

    const-string/jumbo v1, "mtopsdk.FileUtil"

    const-string/jumbo v2, "close cis error"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 34
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 32
    :catch_7
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :catch_8
    move-exception v3

    move-object v3, v4

    goto :goto_2
.end method

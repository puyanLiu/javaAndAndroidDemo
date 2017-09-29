.class public Lanetwork/channel/anet/ResponseHelper;
.super Ljava/lang/Object;
.source "ResponseHelper.java"


# direct methods
.method public static a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    const-string/jumbo v0, "content-encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    const-string/jumbo v2, "GZIP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 30
    const-string/jumbo v1, "content-encoding"

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a([B)[B
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 85
    .line 86
    if-nez p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 93
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [B

    .line 96
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x400

    :try_start_3
    invoke-virtual {v3, v1, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 99
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 104
    :catch_0
    move-exception v1

    .line 105
    :goto_2
    :try_start_4
    const-string/jumbo v5, "ANet.ResponseHelper"

    const-string/jumbo v6, "unzip error."

    invoke-static {v5, v6, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 109
    if-eqz v2, :cond_2

    .line 111
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 116
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 118
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 123
    :cond_3
    :goto_4
    if-eqz v4, :cond_0

    .line 125
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v1

    .line 127
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v3, "close stream error."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    :cond_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 102
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v0

    .line 109
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 116
    :goto_5
    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 123
    :goto_6
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_0

    .line 126
    :catch_2
    move-exception v1

    .line 127
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v3, "close stream error."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 112
    :catch_3
    move-exception v1

    .line 113
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v5, "close stream error."

    invoke-static {v2, v5, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 119
    :catch_4
    move-exception v1

    .line 120
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v3, "close stream error."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 112
    :catch_5
    move-exception v1

    .line 113
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v5, "close stream error."

    invoke-static {v2, v5, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 119
    :catch_6
    move-exception v1

    .line 120
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v3, "close stream error."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 106
    :catch_7
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    .line 107
    :goto_7
    :try_start_c
    const-string/jumbo v5, "ANet.ResponseHelper"

    const-string/jumbo v6, "unzip error."

    invoke-static {v5, v6, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 109
    if-eqz v2, :cond_5

    .line 111
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 116
    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    .line 118
    :try_start_e
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 123
    :cond_6
    :goto_9
    if-eqz v4, :cond_0

    .line 125
    :try_start_f
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_0

    .line 126
    :catch_8
    move-exception v1

    .line 127
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v3, "close stream error."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 112
    :catch_9
    move-exception v1

    .line 113
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v5, "close stream error."

    invoke-static {v2, v5, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 119
    :catch_a
    move-exception v1

    .line 120
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v3, "close stream error."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 109
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_a
    if-eqz v2, :cond_7

    .line 111
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 116
    :cond_7
    :goto_b
    if-eqz v3, :cond_8

    .line 118
    :try_start_11
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 123
    :cond_8
    :goto_c
    if-eqz v4, :cond_9

    .line 125
    :try_start_12
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 128
    :cond_9
    :goto_d
    throw v0

    .line 112
    :catch_b
    move-exception v1

    .line 113
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v5, "close stream error."

    invoke-static {v2, v5, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 119
    :catch_c
    move-exception v1

    .line 120
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v3, "close stream error."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 126
    :catch_d
    move-exception v1

    .line 127
    const-string/jumbo v2, "ANet.ResponseHelper"

    const-string/jumbo v3, "close stream error."

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 109
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_a

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_a

    .line 106
    :catch_e
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_7

    :catch_f
    move-exception v1

    move-object v2, v0

    goto/16 :goto_7

    :catch_10
    move-exception v1

    goto/16 :goto_7

    .line 104
    :catch_11
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_2

    :catch_12
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_2

    :catch_13
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2
.end method

.method public static b(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 38
    .line 40
    :try_start_0
    const-string/jumbo v0, "content-length"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 46
    :goto_0
    :try_start_1
    const-string/jumbo v0, "mres-length"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v2, v0

    .line 52
    :goto_1
    :try_start_2
    const-string/jumbo v0, "m-bin-length"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 56
    :goto_2
    if-eq v2, v3, :cond_0

    move v1, v2

    .line 59
    :cond_0
    if-eq v0, v3, :cond_1

    .line 63
    :goto_3
    return v0

    .line 42
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ANet.ResponseHelper"

    const-string/jumbo v2, "content-length prase exception"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    const-string/jumbo v0, "ANet.ResponseHelper"

    const-string/jumbo v2, "mres-length prase exception"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_1

    .line 54
    :catch_2
    move-exception v0

    const-string/jumbo v0, "ANet.ResponseHelper"

    const-string/jumbo v4, "m-bin-length prase exception"

    invoke-static {v0, v4}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_3
.end method

.method public static c(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v1, -0x1

    .line 68
    if-eqz p0, :cond_0

    .line 70
    :try_start_0
    const-string/jumbo v0, ":status"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 75
    :goto_0
    return v0

    .line 72
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ANet.ResponseHelper"

    const-string/jumbo v2, "status code prase exception"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

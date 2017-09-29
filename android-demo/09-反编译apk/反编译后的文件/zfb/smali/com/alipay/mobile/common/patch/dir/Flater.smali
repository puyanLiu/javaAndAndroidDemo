.class public Lcom/alipay/mobile/common/patch/dir/Flater;
.super Ljava/lang/Object;
.source "Flater.java"


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field private static final b:Lcom/alipay/mobile/common/patch/dir/Flater$FlatComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/nio/charset/Charset;

    .line 78
    new-instance v0, Lcom/alipay/mobile/common/patch/dir/Flater$FlatComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/patch/dir/Flater$FlatComparator;-><init>(Lcom/alipay/mobile/common/patch/dir/Flater$1;)V

    sput-object v0, Lcom/alipay/mobile/common/patch/dir/Flater;->b:Lcom/alipay/mobile/common/patch/dir/Flater$FlatComparator;

    return-void

    .line 24
    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 139
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    const/16 v1, 0x400

    :try_start_1
    new-array v1, v1, [B

    .line 143
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 145
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 146
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_0

    .line 156
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    :cond_0
    :goto_2
    return-void

    .line 154
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 159
    :catch_1
    move-exception v0

    goto :goto_2

    .line 154
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    .line 156
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 159
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 154
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/io/File;Ljava/io/OutputStream;I)V
    .locals 7

    .prologue
    const/16 v6, 0x2f

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 83
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Flater;->b:Lcom/alipay/mobile/common/patch/dir/Flater$FlatComparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 89
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v3, v6, :cond_1

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    goto :goto_1

    .line 89
    :cond_2
    const/16 v2, 0x2f

    :try_start_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    .line 96
    :cond_3
    :try_start_3
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 102
    :cond_4
    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 304
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 307
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 308
    invoke-static {v4}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;)Z

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 315
    :goto_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static packFolderToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x0

    .line 46
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    .line 51
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 52
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v1, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    invoke-static {v3, v1, v5}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_0

    .line 63
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    .line 63
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 66
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 61
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 58
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static unpackFileToFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 175
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 297
    :goto_0
    return v0

    .line 181
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .line 184
    const/4 v4, 0x0

    .line 187
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    invoke-static {v7}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;)Z

    move-result v2

    .line 194
    if-nez v2, :cond_4

    .line 195
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 200
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/16 v0, 0x400

    :try_start_1
    new-array v8, v0, [C

    .line 203
    const/4 v5, 0x0

    .line 204
    const/4 v3, 0x1

    .line 205
    const-wide/16 v0, 0x0

    .line 206
    const/4 v2, 0x0

    .line 209
    :cond_5
    :goto_1
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 211
    if-ltz v9, :cond_a

    .line 212
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_6

    .line 216
    int-to-long v10, v2

    cmp-long v10, v10, v0

    if-gtz v10, :cond_5

    .line 217
    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    add-int/lit8 v2, v2, 0x1

    .line 220
    int-to-long v9, v2

    cmp-long v9, v9, v0

    if-nez v9, :cond_5

    .line 221
    const/4 v3, 0x1

    .line 222
    const-wide/16 v0, 0x0

    .line 223
    const/4 v2, 0x0

    .line 226
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 228
    :catch_0
    move-exception v9

    goto :goto_1

    .line 235
    :cond_6
    int-to-char v9, v9

    .line 237
    if-eqz v9, :cond_7

    .line 238
    :try_start_3
    aput-char v9, v8, v5

    .line 240
    add-int/lit8 v5, v5, 0x1

    .line 241
    goto :goto_1

    .line 244
    :cond_7
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v10, v5}, Ljava/lang/String;-><init>([CII)V

    .line 246
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    .line 247
    if-eqz v3, :cond_9

    .line 251
    add-int/lit8 v5, v5, -0x1

    .line 252
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x2f

    if-ne v5, v9, :cond_8

    .line 256
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 275
    :goto_2
    const/4 v5, 0x0

    .line 276
    goto :goto_1

    .line 259
    :cond_8
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    const/4 v3, 0x0

    move-object v4, v5

    .line 263
    goto :goto_2

    .line 265
    :cond_9
    :try_start_4
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v0

    goto :goto_2

    .line 269
    :catch_1
    move-exception v0

    const/4 v3, 0x1

    .line 270
    const-wide/16 v0, 0x0

    .line 271
    const/4 v2, 0x0

    goto :goto_2

    .line 278
    :cond_a
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 292
    :goto_3
    if-eqz v4, :cond_b

    .line 294
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 297
    :cond_b
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 281
    :catch_2
    move-exception v1

    :goto_5
    if-eqz v0, :cond_c

    .line 286
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 292
    :cond_c
    :goto_6
    if-eqz v4, :cond_d

    .line 294
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 297
    :cond_d
    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 284
    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    :goto_8
    if-eqz v6, :cond_e

    .line 286
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 292
    :cond_e
    :goto_9
    if-eqz v4, :cond_f

    .line 294
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 297
    :cond_f
    :goto_a
    throw v0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_9

    :catch_8
    move-exception v1

    goto :goto_a

    .line 284
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 281
    :catch_9
    move-exception v0

    move-object v0, v6

    goto :goto_5
.end method

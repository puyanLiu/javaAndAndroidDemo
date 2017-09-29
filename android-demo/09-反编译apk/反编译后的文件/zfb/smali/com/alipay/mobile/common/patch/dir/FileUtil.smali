.class public Lcom/alipay/mobile/common/patch/dir/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static childCount(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 175
    array-length v0, v1

    goto :goto_0
.end method

.method public static childOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static cleanPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-object p0

    .line 183
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 282
    :cond_1
    :goto_0
    return v0

    .line 233
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 238
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 239
    goto :goto_0

    .line 243
    :cond_4
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 244
    if-nez p2, :cond_5

    move v0, v1

    .line 245
    goto :goto_0

    .line 247
    :cond_5
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/lang/String;)Z

    .line 250
    :cond_6
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->create(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 251
    goto :goto_0

    .line 254
    :cond_7
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 260
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 266
    const/16 v4, 0x4000

    :try_start_1
    new-array v4, v4, [B

    .line 269
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 270
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 274
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 278
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    move v0, v1

    .line 280
    goto :goto_0

    .line 262
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 272
    :cond_8
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 278
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 281
    :catch_2
    move-exception v1

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    .line 277
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 278
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 280
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static create(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static create(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :goto_0
    return v0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    const/4 v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1, p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    .line 40
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return v1

    .line 111
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 117
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 118
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/io/File;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    or-int/2addr v1, v0

    .line 122
    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 102
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static exists(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 134
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static fileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    .line 290
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    if-nez p0, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string/jumbo v0, ""

    .line 311
    :goto_0
    return-object v0

    .line 307
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 308
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 309
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 311
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 362
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const/4 p0, 0x0

    .line 369
    :cond_0
    :goto_0
    return-object p0

    .line 365
    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 366
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 367
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileStem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 381
    :goto_0
    return-object v0

    .line 377
    :cond_0
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 378
    if-lez v0, :cond_1

    .line 379
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 381
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getLastModified(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 456
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 464
    :goto_0
    return-object v0

    .line 460
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 462
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 463
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 464
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    if-nez p0, :cond_0

    .line 316
    const-string/jumbo v0, "*/*"

    .line 319
    :goto_0
    return-object v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    const-string/jumbo v0, "*/*"

    .line 332
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 328
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const-string/jumbo v0, "*/*"

    goto :goto_0
.end method

.method public static getParent(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    if-nez p0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {v1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getParent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-object v0

    .line 390
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    .line 392
    const/16 v3, 0x5000

    if-gt v2, v3, :cond_0

    .line 396
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 397
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 400
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 402
    :goto_1
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v2, v1, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 404
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 411
    :catch_0
    move-exception v1

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 407
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 408
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static isFile(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 347
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 337
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 343
    :goto_0
    return v0

    .line 342
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFile(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFolder(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 352
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 353
    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    .line 357
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    if-nez p1, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/io/File;)Z

    .line 61
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->move(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    if-eqz p2, :cond_0

    .line 84
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/lang/String;)Z

    .line 89
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v0, 0x4000

    .line 435
    if-nez p0, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 452
    :goto_0
    return-object v0

    .line 439
    :cond_0
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 440
    new-array v2, v0, [B

    .line 443
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 444
    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 445
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 446
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 451
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static final read(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 415
    .line 418
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :try_start_1
    invoke-static {v1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->read(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 423
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 431
    :cond_0
    :goto_0
    return-object v0

    .line 423
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 425
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 428
    :catch_1
    move-exception v1

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_1

    .line 425
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 428
    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 423
    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static size(Ljava/io/File;)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 200
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-wide v0

    .line 205
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 211
    if-eqz v5, :cond_0

    array-length v2, v5

    if-eqz v2, :cond_0

    .line 215
    array-length v6, v5

    .line 216
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_0

    .line 217
    aget-object v3, v5, v2

    .line 218
    invoke-static {v3}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->size(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v3, v0

    .line 216
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_1
.end method

.method public static size(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    const-wide/16 v0, 0x0

    .line 196
    :goto_0
    return-wide v0

    .line 195
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->size(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0
.end method

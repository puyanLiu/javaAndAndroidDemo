.class public final Lnet/lingala/zip4j/util/c;
.super Ljava/lang/Object;
.source "Zip4jUtil.java"


# direct methods
.method private static a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 486
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "Cp850"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    if-eqz p1, :cond_0

    .line 469
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-object v0

    .line 471
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/c;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lnet/lingala/zip4j/model/l;Ljava/lang/String;)Lnet/lingala/zip4j/model/f;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 319
    if-nez p0, :cond_0

    .line 320
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "zip model is null, cannot determine file header with exact match for fileName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    invoke-static {p1}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file name is null, cannot determine file header with exact match for fileName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/l;->a()Lnet/lingala/zip4j/model/b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 328
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "central directory is null, cannot determine file header with exact match for fileName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_2
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/l;->a()Lnet/lingala/zip4j/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 332
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file Headers are null, cannot determine file header with exact match for fileName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_3
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/l;->a()Lnet/lingala/zip4j/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_5

    move-object v0, v2

    .line 351
    :cond_4
    :goto_0
    return-object v0

    .line 338
    :cond_5
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/l;->a()Lnet/lingala/zip4j/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/b;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 339
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 340
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/f;

    .line 341
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/f;->j()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-static {v4}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 343
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 339
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 351
    goto :goto_0
.end method

.method public static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Ljava/io/File;->setReadOnly()Z

    .line 147
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 43
    invoke-static {p0}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "output path is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 47
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "output folder is not valid"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_4

    .line 56
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "no write access to output folder"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "output folder is not valid"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    move-exception v0

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "Cannot create destination folder"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_4

    .line 66
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "no write access to destination folder"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 85
    invoke-static {p0}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "path is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-static {p0}, Lnet/lingala/zip4j/util/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 97
    :catch_0
    move-exception v0

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "cannot read zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 119
    invoke-static {p0}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "path is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

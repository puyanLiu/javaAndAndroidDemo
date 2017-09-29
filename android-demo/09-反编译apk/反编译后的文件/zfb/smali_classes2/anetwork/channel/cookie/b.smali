.class final Lanetwork/channel/cookie/b;
.super Ljava/lang/Object;
.source "HttpCookie.java"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput v0, p0, Lanetwork/channel/cookie/b;->f:I

    .line 233
    iput-boolean v0, p0, Lanetwork/channel/cookie/b;->a:Z

    .line 234
    iput-boolean v0, p0, Lanetwork/channel/cookie/b;->b:Z

    .line 235
    iput-boolean v0, p0, Lanetwork/channel/cookie/b;->c:Z

    .line 238
    iput-object p1, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    .line 239
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/cookie/b;->e:Ljava/lang/String;

    .line 240
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 396
    invoke-direct {p0}, Lanetwork/channel/cookie/b;->c()V

    .line 403
    iget v0, p0, Lanetwork/channel/cookie/b;->f:I

    iget-object v1, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    iget v1, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    iget v1, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_2

    .line 405
    :cond_0
    iget-object v0, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    iget v1, p0, Lanetwork/channel/cookie/b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 406
    iget-object v1, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    iget v2, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 407
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unterminated string literal in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_1
    iget-object v0, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    iget v2, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 412
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lanetwork/channel/cookie/b;->f:I

    .line 419
    :goto_0
    return-object v0

    .line 416
    :cond_2
    invoke-direct {p0, p1}, Lanetwork/channel/cookie/b;->b(Ljava/lang/String;)I

    move-result v1

    .line 417
    iget-object v0, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    iget v2, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 418
    iput v1, p0, Lanetwork/channel/cookie/b;->f:I

    goto :goto_0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 370
    invoke-direct {p0}, Lanetwork/channel/cookie/b;->c()V

    .line 371
    const-string/jumbo v0, ",;= \t"

    invoke-direct {p0, v0}, Lanetwork/channel/cookie/b;->b(Ljava/lang/String;)I

    move-result v1

    .line 372
    if-eqz p1, :cond_0

    iget-object v0, p0, Lanetwork/channel/cookie/b;->e:Ljava/lang/String;

    .line 373
    :goto_0
    iget v2, p0, Lanetwork/channel/cookie/b;->f:I

    if-ge v2, v1, :cond_1

    iget v2, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_1
    iput v1, p0, Lanetwork/channel/cookie/b;->f:I

    .line 375
    return-object v0

    .line 372
    :cond_0
    iget-object v0, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    goto :goto_0

    .line 373
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 427
    iget v0, p0, Lanetwork/channel/cookie/b;->f:I

    :goto_0
    iget-object v1, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 428
    iget-object v1, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 432
    :goto_1
    return v0

    .line 427
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 382
    invoke-direct {p0}, Lanetwork/channel/cookie/b;->c()V

    .line 383
    iget v0, p0, Lanetwork/channel/cookie/b;->f:I

    iget-object v1, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    iget v1, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 384
    iget v0, p0, Lanetwork/channel/cookie/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanetwork/channel/cookie/b;->f:I

    .line 385
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 436
    :goto_0
    iget v0, p0, Lanetwork/channel/cookie/b;->f:I

    iget-object v1, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 437
    const-string/jumbo v0, " \t"

    iget-object v1, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    iget v2, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 438
    iget v0, p0, Lanetwork/channel/cookie/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanetwork/channel/cookie/b;->f:I

    goto :goto_0

    .line 441
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/cookie/HttpCookie;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 243
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    iget-object v0, p0, Lanetwork/channel/cookie/b;->e:Ljava/lang/String;

    const-string/jumbo v3, "set-cookie2:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget v0, p0, Lanetwork/channel/cookie/b;->f:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lanetwork/channel/cookie/b;->f:I

    .line 251
    iput-boolean v2, p0, Lanetwork/channel/cookie/b;->c:Z

    move v0, v1

    .line 262
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lanetwork/channel/cookie/b;->a(Z)Ljava/lang/String;

    move-result-object v4

    .line 263
    if-nez v4, :cond_3

    .line 264
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No cookies in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    iget-object v0, p0, Lanetwork/channel/cookie/b;->e:Ljava/lang/String;

    const-string/jumbo v3, "set-cookie:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iget v0, p0, Lanetwork/channel/cookie/b;->f:I

    add-int/lit8 v0, v0, 0xb

    iput v0, p0, Lanetwork/channel/cookie/b;->f:I

    :cond_2
    move v0, v2

    goto :goto_0

    .line 271
    :cond_3
    invoke-direct {p0}, Lanetwork/channel/cookie/b;->b()Z

    move-result v3

    if-nez v3, :cond_4

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected \'=\' after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_4
    if-eqz v0, :cond_7

    const-string/jumbo v3, ";"

    :goto_1
    invoke-direct {p0, v3}, Lanetwork/channel/cookie/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    new-instance v6, Lanetwork/channel/cookie/HttpCookie;

    invoke-direct {v6, v4, v3}, Lanetwork/channel/cookie/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    if-eqz v0, :cond_8

    move v3, v1

    :goto_2
    invoke-static {v6, v3}, Lanetwork/channel/cookie/HttpCookie;->a(Lanetwork/channel/cookie/HttpCookie;I)I

    .line 279
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_5
    :goto_3
    invoke-direct {p0}, Lanetwork/channel/cookie/b;->c()V

    .line 289
    iget v3, p0, Lanetwork/channel/cookie/b;->f:I

    iget-object v4, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 290
    iget-object v3, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    iget v4, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_9

    .line 294
    iget v3, p0, Lanetwork/channel/cookie/b;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lanetwork/channel/cookie/b;->f:I

    .line 322
    :cond_6
    iget-boolean v3, p0, Lanetwork/channel/cookie/b;->a:Z

    if-eqz v3, :cond_17

    .line 323
    invoke-static {v6, v1}, Lanetwork/channel/cookie/HttpCookie;->a(Lanetwork/channel/cookie/HttpCookie;I)I

    goto/16 :goto_0

    .line 276
    :cond_7
    const-string/jumbo v3, ",;"

    goto :goto_1

    :cond_8
    move v3, v2

    .line 278
    goto :goto_2

    .line 297
    :cond_9
    iget-object v3, p0, Lanetwork/channel/cookie/b;->d:Ljava/lang/String;

    iget v4, p0, Lanetwork/channel/cookie/b;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_a

    .line 298
    iget v3, p0, Lanetwork/channel/cookie/b;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lanetwork/channel/cookie/b;->f:I

    .line 301
    :cond_a
    invoke-direct {p0, v2}, Lanetwork/channel/cookie/b;->a(Z)Ljava/lang/String;

    move-result-object v7

    .line 302
    if-eqz v7, :cond_5

    .line 303
    if-nez v0, :cond_b

    const-string/jumbo v3, "expires"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "port"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    const-string/jumbo v3, ";"

    .line 315
    :goto_4
    const/4 v4, 0x0

    .line 316
    invoke-direct {p0}, Lanetwork/channel/cookie/b;->b()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 317
    invoke-direct {p0, v3}, Lanetwork/channel/cookie/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    :goto_5
    const-string/jumbo v4, "comment"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v6}, Lanetwork/channel/cookie/HttpCookie;->a(Lanetwork/channel/cookie/HttpCookie;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    invoke-static {v6, v3}, Lanetwork/channel/cookie/HttpCookie;->a(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 303
    :cond_c
    const-string/jumbo v3, ";,"

    goto :goto_4

    .line 319
    :cond_d
    const-string/jumbo v4, "commenturl"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v6}, Lanetwork/channel/cookie/HttpCookie;->b(Lanetwork/channel/cookie/HttpCookie;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-static {v6, v3}, Lanetwork/channel/cookie/HttpCookie;->b(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v4, "discard"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v6}, Lanetwork/channel/cookie/HttpCookie;->c(Lanetwork/channel/cookie/HttpCookie;)Z

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v4, "domain"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v6}, Lanetwork/channel/cookie/HttpCookie;->d(Lanetwork/channel/cookie/HttpCookie;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    invoke-static {v6, v3}, Lanetwork/channel/cookie/HttpCookie;->c(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v4, "expires"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iput-boolean v2, p0, Lanetwork/channel/cookie/b;->a:Z

    invoke-static {v6, v3}, Lanetwork/channel/cookie/HttpCookie;->d(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6}, Lanetwork/channel/cookie/HttpCookie;->e(Lanetwork/channel/cookie/HttpCookie;)J

    move-result-wide v3

    cmp-long v3, v3, v10

    if-nez v3, :cond_5

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v4, "max-age"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {v6}, Lanetwork/channel/cookie/HttpCookie;->e(Lanetwork/channel/cookie/HttpCookie;)J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-nez v4, :cond_12

    iput-boolean v2, p0, Lanetwork/channel/cookie/b;->b:Z

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v6, v3, v4}, Lanetwork/channel/cookie/HttpCookie;->a(Lanetwork/channel/cookie/HttpCookie;J)J

    goto/16 :goto_3

    :cond_12
    const-string/jumbo v4, "path"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {v6}, Lanetwork/channel/cookie/HttpCookie;->f(Lanetwork/channel/cookie/HttpCookie;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_13

    invoke-static {v6, v3}, Lanetwork/channel/cookie/HttpCookie;->e(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v4, "port"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v6}, Lanetwork/channel/cookie/HttpCookie;->g(Lanetwork/channel/cookie/HttpCookie;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_15

    if-eqz v3, :cond_14

    :goto_6
    invoke-static {v6, v3}, Lanetwork/channel/cookie/HttpCookie;->f(Lanetwork/channel/cookie/HttpCookie;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_3

    :cond_14
    const-string/jumbo v3, ""

    goto :goto_6

    :cond_15
    const-string/jumbo v4, "secure"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {v6}, Lanetwork/channel/cookie/HttpCookie;->h(Lanetwork/channel/cookie/HttpCookie;)Z

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v4, "version"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lanetwork/channel/cookie/b;->c:Z

    if-nez v4, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v6, v3}, Lanetwork/channel/cookie/HttpCookie;->a(Lanetwork/channel/cookie/HttpCookie;I)I

    goto/16 :goto_3

    .line 324
    :cond_17
    iget-boolean v3, p0, Lanetwork/channel/cookie/b;->b:Z

    if-eqz v3, :cond_0

    .line 325
    invoke-static {v6, v2}, Lanetwork/channel/cookie/HttpCookie;->a(Lanetwork/channel/cookie/HttpCookie;I)I

    goto/16 :goto_0

    .line 268
    :cond_18
    return-object v5

    :cond_19
    move-object v3, v4

    goto/16 :goto_5
.end method

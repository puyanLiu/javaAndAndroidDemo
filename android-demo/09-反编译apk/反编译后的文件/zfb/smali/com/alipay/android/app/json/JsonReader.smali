.class public final Lcom/alipay/android/app/json/JsonReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/json/JsonReader$1;
    }
.end annotation


# instance fields
.field private final a:Lcom/alipay/android/app/util/StringPool;

.field private final b:Ljava/io/Reader;

.field private c:Z

.field private final d:[C

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/json/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/alipay/android/app/json/JsonToken;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Lcom/alipay/android/app/util/StringPool;

    invoke-direct {v0}, Lcom/alipay/android/app/util/StringPool;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->a:Lcom/alipay/android/app/util/StringPool;

    .line 203
    iput-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->c:Z

    .line 211
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    .line 212
    iput v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 213
    iput v1, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    .line 218
    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->g:I

    .line 219
    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    .line 223
    sget-object v0, Lcom/alipay/android/app/json/a;->EMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/a;)V

    .line 244
    iput-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/json/JsonReader;->b:Ljava/io/Reader;

    .line 254
    return-void
.end method

.method private a()Lcom/alipay/android/app/json/JsonToken;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    .line 393
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    .line 394
    iput-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    .line 395
    iput-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    .line 396
    iput-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->k:Ljava/lang/String;

    .line 397
    return-object v0
.end method

.method private a(Z)Lcom/alipay/android/app/json/JsonToken;
    .locals 1

    .prologue
    .line 617
    if-eqz p1, :cond_0

    .line 618
    sget-object v0, Lcom/alipay/android/app/json/a;->NONEMPTY_ARRAY:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->b(Lcom/alipay/android/app/json/a;)V

    .line 634
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 649
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 650
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->c()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    :goto_1
    return-object v0

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 630
    const-string/jumbo v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 623
    :sswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->b()Lcom/alipay/android/app/json/a;

    .line 624
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->END_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_1

    .line 626
    :sswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()V

    goto :goto_0

    .line 636
    :sswitch_3
    if-eqz p1, :cond_1

    .line 637
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->b()Lcom/alipay/android/app/json/a;

    .line 638
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->END_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_1

    .line 644
    :cond_1
    :sswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()V

    .line 645
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 646
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    .line 647
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->NULL:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_1

    .line 634
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    .line 621
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .prologue
    .line 1196
    new-instance v0, Lcom/alipay/android/app/json/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/json/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(C)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 912
    const/4 v0, 0x0

    .line 918
    :cond_0
    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 919
    :goto_0
    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-ge v2, v3, :cond_7

    .line 920
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v2, v2, v3

    .line 922
    if-ne v2, p1, :cond_3

    .line 923
    iget-boolean v2, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    if-eqz v2, :cond_1

    .line 924
    const-string/jumbo v0, "skipped!"

    .line 929
    :goto_1
    return-object v0

    .line 925
    :cond_1
    if-nez v0, :cond_2

    .line 926
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->a:Lcom/alipay/android/app/util/StringPool;

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/android/app/util/StringPool;->a([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 928
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 932
    :cond_3
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_9

    .line 933
    if-nez v0, :cond_4

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    :cond_4
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 937
    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v5}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 938
    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_3
    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 940
    goto :goto_0

    .line 937
    :sswitch_0
    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-le v1, v2, :cond_6

    invoke-direct {p0, v6}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->a:Lcom/alipay/android/app/util/StringPool;

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v1, v2, v3, v6}, Lcom/alipay/android/app/util/StringPool;->a([CII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    goto :goto_2

    :sswitch_1
    const/16 v1, 0x9

    goto :goto_2

    :sswitch_2
    const/16 v1, 0x8

    goto :goto_2

    :sswitch_3
    const/16 v1, 0xa

    goto :goto_2

    :sswitch_4
    const/16 v1, 0xd

    goto :goto_2

    :sswitch_5
    const/16 v1, 0xc

    goto :goto_2

    .line 942
    :cond_7
    if-nez v0, :cond_8

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    :cond_8
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 946
    invoke-direct {p0, v5}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 948
    const-string/jumbo v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_9
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_3

    .line 937
    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Lcom/alipay/android/app/json/JsonToken;)V
    .locals 3

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    .line 325
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->a()Lcom/alipay/android/app/json/JsonToken;

    .line 330
    return-void
.end method

.method private a(Lcom/alipay/android/app/json/a;)V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    return-void
.end method

.method private a(I)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 754
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    if-ge v0, v3, :cond_1

    .line 755
    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    aget-char v3, v3, v0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 756
    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alipay/android/app/json/JsonReader;->g:I

    .line 757
    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    .line 754
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_0
    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    goto :goto_1

    .line 763
    :cond_1
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    if-eq v0, v3, :cond_5

    .line 764
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    .line 765
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    invoke-static {v0, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 770
    :goto_2
    iput v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 772
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->b:Ljava/io/Reader;

    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iget-object v5, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    array-length v5, v5

    iget v6, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 773
    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    .line 777
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->g:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    aget-char v0, v0, v1

    const v3, 0xfeff

    if-ne v0, v3, :cond_3

    .line 779
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 780
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    .line 783
    :cond_3
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-lt v0, p1, :cond_2

    move v1, v2

    .line 787
    :cond_4
    return v1

    .line 767
    :cond_5
    iput v1, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    goto :goto_2
.end method

.method private b(Z)Lcom/alipay/android/app/json/JsonToken;
    .locals 1

    .prologue
    .line 660
    if-eqz p1, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 667
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 683
    :sswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->f()I

    move-result v0

    .line 684
    sparse-switch v0, :sswitch_data_0

    .line 691
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()V

    .line 692
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 693
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->c(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->k:Ljava/lang/String;

    .line 694
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    const-string/jumbo v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 664
    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->b()Lcom/alipay/android/app/json/a;

    .line 665
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->END_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    .line 700
    :goto_0
    return-object v0

    .line 670
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 678
    const-string/jumbo v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 672
    :sswitch_1
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->b()Lcom/alipay/android/app/json/a;

    .line 673
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->END_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_0

    .line 686
    :sswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()V

    .line 688
    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->k:Ljava/lang/String;

    .line 699
    :cond_1
    sget-object v0, Lcom/alipay/android/app/json/a;->DANGLING_NAME:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->b(Lcom/alipay/android/app/json/a;)V

    .line 700
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->NAME:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_0

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    .line 684
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    .line 670
    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private b()Lcom/alipay/android/app/json/a;
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/a;

    return-object v0
.end method

.method private b(Lcom/alipay/android/app/json/a;)V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-void
.end method

.method private c()Lcom/alipay/android/app/json/JsonToken;
    .locals 11

    .prologue
    const/16 v9, 0x65

    const/16 v3, 0x4c

    const/16 v8, 0x45

    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 726
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->f()I

    move-result v0

    .line 727
    sparse-switch v0, :sswitch_data_0

    .line 743
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 744
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->c(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 729
    :sswitch_0
    sget-object v0, Lcom/alipay/android/app/json/a;->EMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/a;)V

    .line 730
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->BEGIN_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    .line 744
    :goto_0
    return-object v0

    .line 733
    :sswitch_1
    sget-object v0, Lcom/alipay/android/app/json/a;->EMPTY_ARRAY:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/a;)V

    .line 734
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->BEGIN_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_0

    .line 737
    :sswitch_2
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()V

    .line 739
    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    .line 740
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_0

    .line 744
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_1

    const/16 v0, 0x4e

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6

    :cond_1
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_2

    const/16 v0, 0x55

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6

    :cond_2
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6

    :cond_3
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6

    :cond_4
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->NULL:Lcom/alipay/android/app/json/JsonToken;

    :goto_1
    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()V

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/16 v0, 0x74

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_7

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_7
    const/16 v0, 0x72

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_8

    const/16 v0, 0x52

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_8
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_9

    const/16 v0, 0x55

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v9, v0, :cond_a

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v8, v0, :cond_b

    :cond_a
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->BOOLEAN:Lcom/alipay/android/app/json/JsonToken;

    goto :goto_1

    :cond_b
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    const/16 v0, 0x66

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_c

    const/16 v0, 0x46

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_c
    const/16 v0, 0x61

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_d

    const/16 v0, 0x41

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_d
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_11

    :cond_e
    const/16 v0, 0x73

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_f

    const/16 v0, 0x53

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_f
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-eq v9, v0, :cond_10

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v8, v0, :cond_11

    :cond_10
    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->BOOLEAN:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->a:Lcom/alipay/android/app/util/StringPool;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/util/StringPool;->a([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    aget-char v0, v3, v2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1c

    add-int/lit8 v1, v2, 0x1

    aget-char v0, v3, v1

    :goto_2
    if-ne v0, v6, :cond_13

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :cond_12
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_15

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :goto_3
    if-lt v0, v6, :cond_15

    if-gt v0, v7, :cond_15

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    goto :goto_3

    :cond_13
    const/16 v5, 0x31

    if-lt v0, v5, :cond_14

    if-gt v0, v7, :cond_14

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :goto_4
    if-lt v0, v6, :cond_12

    if-gt v0, v7, :cond_12

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    goto :goto_4

    :cond_14
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_1

    :cond_15
    move v10, v0

    move v0, v1

    move v1, v10

    if-eq v1, v9, :cond_16

    if-ne v1, v8, :cond_1a

    :cond_16
    add-int/lit8 v1, v0, 0x1

    aget-char v0, v3, v1

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_17

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_18

    :cond_17
    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :cond_18
    if-lt v0, v6, :cond_19

    if-gt v0, v7, :cond_19

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_5
    if-lt v1, v6, :cond_1a

    if-gt v1, v7, :cond_1a

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v3, v1

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_5

    :cond_19
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_1

    :cond_1a
    add-int v1, v2, v4

    if-ne v0, v1, :cond_1b

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->NUMBER:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_1

    :cond_1b
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_1

    :cond_1c
    move v1, v2

    goto :goto_2

    .line 727
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 961
    .line 962
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    .line 963
    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    move v1, v2

    move-object v0, v3

    .line 967
    :cond_0
    :goto_0
    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-ge v4, v5, :cond_1

    .line 968
    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 967
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    :sswitch_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()V

    .line 1014
    :goto_1
    :sswitch_1
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    .line 1020
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->m:I

    .line 1030
    :goto_2
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    .line 1031
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 1032
    return-object v3

    .line 995
    :cond_1
    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 996
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 997
    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    aput-char v2, v4, v5

    goto :goto_1

    .line 1006
    :cond_2
    if-nez v0, :cond_3

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    :cond_3
    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v0, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1010
    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/alipay/android/app/json/JsonReader;->n:I

    .line 1011
    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 1013
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_1

    .line 1022
    :cond_4
    iget-boolean v2, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    if-eqz v2, :cond_5

    .line 1023
    const-string/jumbo v3, "skipped!"

    goto :goto_2

    .line 1024
    :cond_5
    if-nez v0, :cond_6

    .line 1025
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->a:Lcom/alipay/android/app/util/StringPool;

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/alipay/android/app/util/StringPool;->a([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1027
    :cond_6
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    move v1, v2

    goto/16 :goto_0

    .line 968
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private d()I
    .locals 4

    .prologue
    .line 791
    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->g:I

    .line 792
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    if-ge v0, v2, :cond_1

    .line 793
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 794
    add-int/lit8 v1, v1, 0x1

    .line 792
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 797
    :cond_1
    return v1
.end method

.method private e()I
    .locals 4

    .prologue
    .line 801
    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->h:I

    .line 802
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    if-ge v0, v2, :cond_1

    .line 803
    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 804
    const/4 v1, 0x1

    .line 802
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 806
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 809
    :cond_1
    return v1
.end method

.method private f()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 813
    :goto_0
    :sswitch_0
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-lt v0, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v0, v0, v3

    .line 815
    sparse-switch v0, :sswitch_data_0

    .line 860
    :cond_1
    :goto_1
    return v0

    .line 823
    :sswitch_1
    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v2}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()V

    .line 828
    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v3, v3, v4

    .line 829
    sparse-switch v3, :sswitch_data_1

    goto :goto_1

    .line 832
    :sswitch_2
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 833
    const-string/jumbo v3, "*/"

    :goto_2
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-le v0, v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v5, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_4
    if-nez v0, :cond_7

    .line 834
    const-string/jumbo v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 833
    :cond_5
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_4

    .line 836
    :cond_7
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    goto/16 :goto_0

    .line 841
    :sswitch_3
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    .line 842
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->h()V

    goto/16 :goto_0

    .line 855
    :sswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()V

    .line 856
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->h()V

    goto/16 :goto_0

    .line 864
    :cond_8
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    .line 829
    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private g()V
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/alipay/android/app/json/JsonReader;->c:Z

    if-nez v0, :cond_0

    .line 869
    const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 871
    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 879
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v0, v0, v1

    .line 881
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 882
    :cond_2
    return-void
.end method


# virtual methods
.method public final beginArray()V
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->BEGIN_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/JsonToken;)V

    .line 294
    return-void
.end method

.method public final beginObject()V
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->BEGIN_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/JsonToken;)V

    .line 310
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 566
    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    .line 567
    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    .line 568
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 569
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    sget-object v1, Lcom/alipay/android/app/json/a;->CLOSED:Lcom/alipay/android/app/json/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 571
    return-void
.end method

.method public final endArray()V
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->END_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/JsonToken;)V

    .line 302
    return-void
.end method

.method public final endObject()V
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->END_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Lcom/alipay/android/app/json/JsonToken;)V

    .line 318
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    .line 337
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->END_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->END_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLenient()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/alipay/android/app/json/JsonReader;->c:Z

    return v0
.end method

.method public final nextBoolean()Z
    .locals 3

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    .line 448
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->BOOLEAN:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    const-string/jumbo v1, "true"

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 454
    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->a()Lcom/alipay/android/app/json/JsonToken;

    .line 455
    return v0

    .line 453
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nextDouble()D
    .locals 3

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    .line 484
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->NUMBER:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    .line 485
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 490
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->a()Lcom/alipay/android/app/json/JsonToken;

    .line 491
    return-wide v0
.end method

.method public final nextInt()I
    .locals 5

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    .line 542
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->NUMBER:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 558
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->a()Lcom/alipay/android/app/json/JsonToken;

    .line 559
    return v0

    .line 550
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 552
    double-to-int v0, v1

    .line 553
    int-to-double v3, v0

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_1

    .line 554
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextLong()J
    .locals 6

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    .line 508
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->NUMBER:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    .line 509
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 524
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->a()Lcom/alipay/android/app/json/JsonToken;

    .line 525
    return-wide v0

    .line 516
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 518
    double-to-long v0, v2

    .line 519
    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_1

    .line 520
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    .line 409
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->NAME:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->k:Ljava/lang/String;

    .line 413
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->a()Lcom/alipay/android/app/json/JsonToken;

    .line 414
    return-object v0
.end method

.method public final nextNull()V
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    .line 467
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->NULL:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->a()Lcom/alipay/android/app/json/JsonToken;

    .line 472
    return-void
.end method

.method public final nextString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    .line 428
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->STRING:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v1, Lcom/alipay/android/app/json/JsonToken;->NUMBER:Lcom/alipay/android/app/json/JsonToken;

    if-eq v0, v1, :cond_0

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/json/JsonReader;->peek()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->l:Ljava/lang/String;

    .line 434
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->a()Lcom/alipay/android/app/json/JsonToken;

    .line 435
    return-object v0
.end method

.method public final peek()Lcom/alipay/android/app/json/JsonToken;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 344
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    .line 377
    :cond_0
    :goto_0
    return-object v0

    .line 348
    :cond_1
    sget-object v1, Lcom/alipay/android/app/json/JsonReader$1;->a:[I

    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 383
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 350
    :pswitch_0
    sget-object v0, Lcom/alipay/android/app/json/a;->NONEMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->b(Lcom/alipay/android/app/json/a;)V

    .line 351
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->c()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    .line 352
    iget-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v2, Lcom/alipay/android/app/json/JsonToken;->BEGIN_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    sget-object v2, Lcom/alipay/android/app/json/JsonToken;->BEGIN_OBJECT:Lcom/alipay/android/app/json/JsonToken;

    if-eq v1, v2, :cond_0

    .line 354
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/alipay/android/app/json/JsonReader;->a(Z)Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 362
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/alipay/android/app/json/JsonReader;->a(Z)Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 364
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/alipay/android/app/json/JsonReader;->b(Z)Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 366
    :pswitch_4
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    const-string/jumbo v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_6
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->g()V

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0, v3}, Lcom/alipay/android/app/json/JsonReader;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v1, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    :cond_3
    :pswitch_7
    sget-object v0, Lcom/alipay/android/app/json/a;->NONEMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->b(Lcom/alipay/android/app/json/a;)V

    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->c()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    .line 368
    :pswitch_8
    invoke-direct {p0, v4}, Lcom/alipay/android/app/json/JsonReader;->b(Z)Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    .line 371
    :pswitch_9
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->c()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v0

    .line 372
    iget-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->c:Z

    if-nez v1, :cond_0

    .line 375
    const-string/jumbo v0, "Expected EOF"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/json/JsonReader;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/android/app/json/JsonToken;->END_DOCUMENT:Lcom/alipay/android/app/json/JsonToken;

    iput-object v0, p0, Lcom/alipay/android/app/json/JsonReader;->j:Lcom/alipay/android/app/json/JsonToken;

    goto/16 :goto_0

    .line 381
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 366
    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/alipay/android/app/json/JsonReader;->c:Z

    .line 279
    return-void
.end method

.method public final skipValue()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    move v0, v1

    .line 583
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/json/JsonReader;->a()Lcom/alipay/android/app/json/JsonToken;

    move-result-object v2

    .line 584
    sget-object v3, Lcom/alipay/android/app/json/JsonToken;->BEGIN_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/alipay/android/app/json/JsonToken;->BEGIN_OBJECT:Lcom/alipay/android/app/json/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_3

    .line 586
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 591
    :cond_2
    :goto_0
    if-nez v0, :cond_0

    .line 593
    iput-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    .line 594
    return-void

    .line 587
    :cond_3
    :try_start_1
    sget-object v3, Lcom/alipay/android/app/json/JsonToken;->END_ARRAY:Lcom/alipay/android/app/json/JsonToken;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/alipay/android/app/json/JsonToken;->END_OBJECT:Lcom/alipay/android/app/json/JsonToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_2

    .line 589
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/alipay/android/app/json/JsonReader;->o:Z

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x14

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/android/app/json/JsonReader;->f:I

    iget v3, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/json/JsonReader;->d:[C

    iget v4, p0, Lcom/alipay/android/app/json/JsonReader;->e:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

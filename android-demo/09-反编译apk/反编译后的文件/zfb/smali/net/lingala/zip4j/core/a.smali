.class public final Lnet/lingala/zip4j/core/a;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Lnet/lingala/zip4j/model/l;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    .line 55
    iput-object p1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    .line 56
    return-void
.end method

.method private a(I)Ljava/util/ArrayList;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 456
    if-gtz p1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-object v0

    .line 461
    :cond_1
    :try_start_0
    new-array v3, p1, [B

    .line 462
    iget-object v1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 466
    :goto_1
    if-ge v2, p1, :cond_4

    .line 467
    new-instance v4, Lnet/lingala/zip4j/model/e;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/e;-><init>()V

    .line 468
    invoke-static {v3, v2}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v5

    .line 469
    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lnet/lingala/zip4j/model/e;->a(J)V

    .line 470
    add-int/lit8 v5, v2, 0x2

    .line 471
    invoke-static {v3, v5}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v2

    .line 473
    add-int/lit8 v6, v2, 0x2

    if-le v6, p1, :cond_2

    .line 474
    aget-byte v2, v3, v5

    and-int/lit16 v2, v2, 0xff

    or-int/lit8 v2, v2, 0x0

    int-to-short v2, v2

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    int-to-short v2, v2

    .line 475
    add-int/lit8 v6, v2, 0x2

    if-gt v6, p1, :cond_4

    .line 478
    :cond_2
    invoke-virtual {v4, v2}, Lnet/lingala/zip4j/model/e;->a(I)V

    .line 483
    add-int/lit8 v5, v5, 0x2

    .line 485
    if-lez v2, :cond_3

    .line 486
    new-array v6, v2, [B

    .line 487
    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    invoke-virtual {v4, v6}, Lnet/lingala/zip4j/model/e;->a([B)V

    .line 490
    :cond_3
    add-int/2addr v2, v5

    .line 491
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 493
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v0, v1

    .line 494
    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/a;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    .line 1046
    if-nez p0, :cond_0

    move-object v0, v3

    .line 1079
    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    .line 1050
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1051
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/e;

    .line 1052
    if-eqz v0, :cond_2

    .line 1053
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x9901

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 1058
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->c()[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 1059
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "corrput AES extra data records"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_1
    new-instance v1, Lnet/lingala/zip4j/model/a;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/a;-><init>()V

    .line 1064
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/a;->a()V

    .line 1065
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/model/a;->a(I)V

    .line 1067
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->c()[B

    move-result-object v0

    .line 1068
    invoke-static {v0, v2}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v3

    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/model/a;->b(I)V

    .line 1069
    new-array v3, v8, [B

    .line 1070
    invoke-static {v0, v8, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1071
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/a;->a(Ljava/lang/String;)V

    .line 1072
    const/4 v2, 0x4

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/a;->c(I)V

    .line 1073
    const/4 v2, 0x5

    invoke-static {v0, v2}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/a;->d(I)V

    move-object v0, v1

    .line 1075
    goto :goto_0

    .line 1050
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 1079
    goto :goto_0
.end method

.method private a()Lnet/lingala/zip4j/model/d;
    .locals 11

    .prologue
    const-wide/32 v9, 0x6054b50

    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "random access file was null"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x4

    :try_start_0
    new-array v6, v0, [B

    .line 112
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    sub-long/2addr v2, v4

    .line 114
    new-instance v7, Lnet/lingala/zip4j/model/d;

    invoke-direct {v7}, Lnet/lingala/zip4j/model/d;-><init>()V

    move v0, v1

    .line 117
    :goto_0
    iget-object v8, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    invoke-virtual {v8, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    iget-object v2, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v2, v6}, Lnet/lingala/zip4j/util/b;->a(Ljava/io/DataInput;[B)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v9

    if-eqz v2, :cond_1

    const/16 v2, 0xbb8

    if-le v0, v2, :cond_5

    .line 121
    :cond_1
    invoke-static {v6}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v9

    if-eqz v0, :cond_2

    .line 122
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v2, "zip headers not found. probably not a zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    new-instance v2, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v3, "Probably not a zip file or a corrupted zip file"

    invoke-direct {v2, v3, v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;B)V

    throw v2

    .line 124
    :cond_2
    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [B

    .line 125
    const/4 v2, 0x2

    new-array v2, v2, [B

    .line 128
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/d;->a()V

    .line 131
    iget-object v3, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v3, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 132
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v3

    invoke-virtual {v7, v3}, Lnet/lingala/zip4j/model/d;->a(I)V

    .line 135
    iget-object v3, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v3, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 136
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v3

    invoke-virtual {v7, v3}, Lnet/lingala/zip4j/model/d;->b(I)V

    .line 139
    iget-object v3, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v3, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 140
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v3

    invoke-virtual {v7, v3}, Lnet/lingala/zip4j/model/d;->c(I)V

    .line 143
    iget-object v3, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v3, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 144
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v3

    invoke-virtual {v7, v3}, Lnet/lingala/zip4j/model/d;->d(I)V

    .line 147
    iget-object v3, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v3, v0}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 148
    invoke-static {v0}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v3

    invoke-virtual {v7, v3}, Lnet/lingala/zip4j/model/d;->e(I)V

    .line 151
    iget-object v3, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v3, v0}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 152
    invoke-static {v0}, Lnet/lingala/zip4j/core/a;->a([B)[B

    move-result-object v0

    .line 153
    invoke-static {v0}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lnet/lingala/zip4j/model/d;->a(J)V

    .line 156
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 157
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v0

    .line 158
    invoke-virtual {v7, v0}, Lnet/lingala/zip4j/model/d;->f(I)V

    .line 161
    if-lez v0, :cond_3

    .line 162
    new-array v0, v0, [B

    .line 163
    iget-object v2, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v2, v0}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 164
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v2}, Lnet/lingala/zip4j/model/d;->a(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v7, v0}, Lnet/lingala/zip4j/model/d;->a([B)V

    .line 170
    :goto_1
    invoke-virtual {v7}, Lnet/lingala/zip4j/model/d;->b()I

    move-result v0

    .line 171
    if-lez v0, :cond_4

    .line 172
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/l;->a(Z)V

    .line 177
    :goto_2
    return-object v7

    .line 167
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lnet/lingala/zip4j/model/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_4
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/l;->a(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    move-wide v2, v4

    goto/16 :goto_0
.end method

.method private static a(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/k;
    .locals 11

    .prologue
    .line 729
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 730
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/e;

    .line 731
    if-eqz v0, :cond_3

    .line 732
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 737
    new-instance v1, Lnet/lingala/zip4j/model/k;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/k;-><init>()V

    .line 739
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->c()[B

    move-result-object v4

    .line 741
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->b()I

    move-result v2

    if-lez v2, :cond_4

    .line 742
    const/16 v2, 0x8

    new-array v5, v2, [B

    .line 745
    const/4 v2, 0x4

    new-array v6, v2, [B

    .line 746
    const/4 v3, 0x0

    .line 747
    const/4 v2, 0x0

    .line 749
    const-wide/32 v7, 0xffff

    and-long/2addr v7, p1

    const-wide/32 v9, 0xffff

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->b()I

    move-result v7

    if-lez v7, :cond_0

    .line 750
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x8

    invoke-static {v4, v2, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    invoke-static {v5}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v2

    .line 752
    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/k;->b(J)V

    .line 753
    const/16 v3, 0x8

    .line 754
    const/4 v2, 0x1

    .line 757
    :cond_0
    const-wide/32 v7, 0xffff

    and-long/2addr v7, p3

    const-wide/32 v9, 0xffff

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->b()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 758
    const/4 v2, 0x0

    const/16 v7, 0x8

    invoke-static {v4, v3, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    invoke-static {v5}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v7

    .line 760
    invoke-virtual {v1, v7, v8}, Lnet/lingala/zip4j/model/k;->a(J)V

    .line 761
    add-int/lit8 v3, v3, 0x8

    .line 762
    const/4 v2, 0x1

    .line 765
    :cond_1
    const-wide/32 v7, 0xffff

    and-long v7, v7, p5

    const-wide/32 v9, 0xffff

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->b()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 766
    const/4 v2, 0x0

    const/16 v7, 0x8

    invoke-static {v4, v3, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    invoke-static {v5}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v7

    .line 768
    invoke-virtual {v1, v7, v8}, Lnet/lingala/zip4j/model/k;->c(J)V

    .line 769
    add-int/lit8 v3, v3, 0x8

    .line 770
    const/4 v2, 0x1

    .line 773
    :cond_2
    const v5, 0xffff

    and-int v5, v5, p7

    const v7, 0xffff

    if-ne v5, v7, :cond_5

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/e;->b()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 774
    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-static {v4, v3, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    invoke-static {v6}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v0

    .line 776
    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/k;->a(I)V

    .line 777
    const/4 v0, 0x1

    .line 781
    :goto_1
    if-eqz v0, :cond_4

    move-object v0, v1

    .line 788
    :goto_2
    return-object v0

    .line 729
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 788
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method private static a(Lnet/lingala/zip4j/model/g;)V
    .locals 8

    .prologue
    const-wide/16 v5, -0x1

    .line 687
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/g;->d()J

    move-result-wide v1

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/g;->c()J

    move-result-wide v3

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lnet/lingala/zip4j/core/a;->a(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/k;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/g;->a(Lnet/lingala/zip4j/model/k;)V

    .line 704
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/k;->b()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    .line 705
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/k;->b()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lnet/lingala/zip4j/model/g;->c(J)V

    .line 707
    :cond_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/k;->a()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 708
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/k;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/lingala/zip4j/model/g;->b(J)V

    goto :goto_0
.end method

.method private static a(Ljava/io/RandomAccessFile;[B)[B
    .locals 3

    .prologue
    .line 1091
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1092
    return-object p1

    .line 1094
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "unexpected end of file when reading short buff"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v2, "IOException when reading short buff"

    invoke-direct {v1, v2, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a([B)[B
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1108
    const/16 v0, 0x8

    new-array v0, v0, [B

    aget-byte v1, p0, v2

    aput-byte v1, v0, v2

    aget-byte v1, p0, v3

    aput-byte v1, v0, v3

    aget-byte v1, p0, v4

    aput-byte v1, v0, v4

    aget-byte v1, p0, v5

    aput-byte v1, v0, v5

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v2, v0, v1

    .line 1117
    return-object v0
.end method

.method private b()Lnet/lingala/zip4j/model/b;
    .locals 17

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v2, "random access file was null"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 194
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/l;->b()Lnet/lingala/zip4j/model/d;

    move-result-object v1

    if-nez v1, :cond_1

    .line 195
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v2, "EndCentralRecord was null, maybe a corrupt zip file"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_1
    :try_start_0
    new-instance v9, Lnet/lingala/zip4j/model/b;

    invoke-direct {v9}, Lnet/lingala/zip4j/model/b;-><init>()V

    .line 200
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/l;->b()Lnet/lingala/zip4j/model/d;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/d;->d()J

    move-result-wide v1

    .line 204
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/d;->c()I

    move-result v3

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/l;->g()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/l;->f()Lnet/lingala/zip4j/model/j;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/j;->d()J

    move-result-wide v1

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/l;->f()Lnet/lingala/zip4j/model/j;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/j;->c()J

    move-result-wide v3

    long-to-int v3, v3

    move v11, v3

    .line 211
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 213
    const/4 v1, 0x4

    new-array v13, v1, [B

    .line 214
    const/4 v1, 0x2

    new-array v14, v1, [B

    .line 215
    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v11, :cond_16

    .line 218
    new-instance v15, Lnet/lingala/zip4j/model/f;

    invoke-direct {v15}, Lnet/lingala/zip4j/model/f;-><init>()V

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v13}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 222
    invoke-static {v13}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v1

    .line 223
    int-to-long v2, v1

    const-wide/32 v4, 0x2014b50    # 1.6619997E-316

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 224
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Expected central directory entry not found (#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    new-instance v2, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 226
    :cond_2
    :try_start_1
    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->a(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v14}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 230
    const/4 v1, 0x0

    invoke-static {v14, v1}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v1

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->b(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v14}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 234
    const/4 v1, 0x0

    invoke-static {v14, v1}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v1

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->c(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v14}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 238
    const/4 v1, 0x0

    invoke-static {v14, v1}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->c(Z)V

    .line 239
    const/4 v1, 0x0

    aget-byte v2, v14, v1

    .line 240
    and-int/lit8 v1, v2, 0x1

    .line 241
    if-eqz v1, :cond_3

    .line 242
    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->m()V

    .line 244
    :cond_3
    invoke-virtual {v14}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->a([B)V

    .line 247
    shr-int/lit8 v1, v2, 0x3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->b(Z)V

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v14}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 251
    const/4 v1, 0x0

    invoke-static {v14, v1}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v1

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->d(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v13}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 255
    invoke-static {v13}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v1

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->e(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v13}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 259
    invoke-static {v13}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v15, v1, v2}, Lnet/lingala/zip4j/model/f;->a(J)V

    .line 260
    invoke-virtual {v13}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->d([B)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v13}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 264
    invoke-static {v13}, Lnet/lingala/zip4j/core/a;->a([B)[B

    move-result-object v1

    .line 265
    invoke-static {v1}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2}, Lnet/lingala/zip4j/model/f;->b(J)V

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v13}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 269
    invoke-static {v13}, Lnet/lingala/zip4j/core/a;->a([B)[B

    move-result-object v1

    .line 270
    invoke-static {v1}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v1

    invoke-virtual {v15, v1, v2}, Lnet/lingala/zip4j/model/f;->c(J)V

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v14}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 274
    const/4 v1, 0x0

    invoke-static {v14, v1}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v2

    .line 275
    invoke-virtual {v15, v2}, Lnet/lingala/zip4j/model/f;->f(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v14}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 279
    const/4 v1, 0x0

    invoke-static {v14, v1}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v1

    .line 280
    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->g(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v14}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 284
    const/4 v1, 0x0

    invoke-static {v14, v1}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v16

    .line 285
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v14}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->b(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v14}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 289
    const/4 v1, 0x0

    invoke-static {v14, v1}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v1

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->h(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v14}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 293
    invoke-virtual {v14}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->b([B)V

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v13}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 297
    invoke-virtual {v13}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->c([B)V

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v13}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 303
    invoke-static {v13}, Lnet/lingala/zip4j/core/a;->a([B)[B

    move-result-object v1

    .line 304
    invoke-static {v1}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-virtual {v15, v3, v4}, Lnet/lingala/zip4j/model/f;->d(J)V

    .line 306
    if-lez v2, :cond_b

    .line 307
    new-array v2, v2, [B

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 317
    new-instance v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/l;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 322
    :goto_4
    if-nez v1, :cond_7

    .line 323
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v2, "fileName is null when reading central directory"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 247
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 319
    :cond_6
    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->u()Z

    move-result v1

    invoke-static {v2, v1}, Lnet/lingala/zip4j/util/c;->a([BZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 326
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    :cond_8
    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->a(Ljava/lang/String;)V

    .line 331
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->a(Z)V

    .line 338
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_c

    new-instance v1, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v2, "invalid file handler when trying to read extra data record"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    .line 334
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 338
    :cond_c
    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->f()I

    move-result v1

    if-lez v1, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/core/a;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->a(Ljava/util/ArrayList;)V

    .line 341
    :cond_d
    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->r()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->r()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_11

    .line 344
    :cond_e
    :goto_7
    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->r()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->r()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_15

    .line 363
    :cond_f
    :goto_8
    if-lez v16, :cond_10

    .line 364
    move/from16 v0, v16

    new-array v1, v0, [B

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v2, v1}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 366
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v15, v2}, Lnet/lingala/zip4j/model/f;->b(Ljava/lang/String;)V

    .line 369
    :cond_10
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_1

    .line 341
    :cond_11
    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->r()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->e()J

    move-result-wide v2

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->d()J

    move-result-wide v4

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->i()J

    move-result-wide v6

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->g()I

    move-result v8

    invoke-static/range {v1 .. v8}, Lnet/lingala/zip4j/core/a;->a(Ljava/util/ArrayList;JJJI)Lnet/lingala/zip4j/model/k;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->a(Lnet/lingala/zip4j/model/k;)V

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->b()J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lnet/lingala/zip4j/model/f;->c(J)V

    :cond_12
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->a()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->a()J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lnet/lingala/zip4j/model/f;->b(J)V

    :cond_13
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->c()J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lnet/lingala/zip4j/model/f;->d(J)V

    :cond_14
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->d()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/k;->d()I

    move-result v1

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->h(I)V

    goto/16 :goto_7

    .line 344
    :cond_15
    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->r()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/core/a;->a(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/a;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v15, v1}, Lnet/lingala/zip4j/model/f;->a(Lnet/lingala/zip4j/model/a;)V

    invoke-virtual {v15}, Lnet/lingala/zip4j/model/f;->o()V

    goto/16 :goto_8

    .line 371
    :cond_16
    invoke-virtual {v9, v12}, Lnet/lingala/zip4j/model/b;->a(Ljava/util/ArrayList;)V

    .line 374
    new-instance v1, Lnet/lingala/zip4j/model/c;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/c;-><init>()V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v2, v13}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 376
    invoke-static {v13}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v2

    .line 377
    int-to-long v3, v2

    const-wide/32 v5, 0x5054b50

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    move-object v1, v9

    .line 394
    :goto_9
    return-object v1

    .line 381
    :cond_17
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/c;->a(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v2, v14}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 385
    const/4 v2, 0x0

    invoke-static {v14, v2}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v2

    .line 386
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/model/c;->b(I)V

    .line 388
    if-lez v2, :cond_18

    .line 389
    new-array v2, v2, [B

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v3, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 391
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/model/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_18
    move-object v1, v9

    .line 394
    goto :goto_9

    :cond_19
    move v11, v3

    goto/16 :goto_0
.end method

.method private c()Lnet/lingala/zip4j/model/i;
    .locals 10

    .prologue
    const-wide/16 v8, 0x4

    .line 510
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid file handler when trying to read Zip64EndCentralDirLocator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/model/i;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/i;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 517
    const/4 v1, 0x4

    :try_start_1
    new-array v5, v1, [B

    iget-object v1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x16

    sub-long/2addr v1, v3

    :goto_0
    iget-object v6, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    invoke-virtual {v6, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v5}, Lnet/lingala/zip4j/util/b;->a(Ljava/io/DataInput;[B)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v6, 0x6054b50

    cmp-long v1, v1, v6

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sub-long/2addr v2, v8

    sub-long/2addr v2, v8

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    sub-long/2addr v2, v8

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 519
    const/4 v1, 0x4

    :try_start_2
    new-array v1, v1, [B

    .line 520
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 522
    iget-object v3, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v3, v1}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 523
    invoke-static {v1}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v3

    .line 524
    int-to-long v4, v3

    const-wide/32 v6, 0x7064b50

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 525
    iget-object v4, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/l;->b(Z)V

    .line 526
    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lnet/lingala/zip4j/model/i;->a(J)V

    .line 532
    iget-object v3, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v3, v1}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 533
    invoke-static {v1}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/i;->a(I)V

    .line 536
    iget-object v3, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v3, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 537
    invoke-static {v2}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/i;->b(J)V

    .line 540
    iget-object v2, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v2, v1}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 541
    invoke-static {v1}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/i;->b(I)V

    .line 543
    :goto_1
    return-object v0

    .line 517
    :catch_0
    move-exception v0

    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 545
    :catch_1
    move-exception v0

    .line 546
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 528
    :cond_1
    :try_start_3
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->b(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 529
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-wide v1, v3

    goto/16 :goto_0
.end method

.method private d()Lnet/lingala/zip4j/model/j;
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 558
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/l;->e()Lnet/lingala/zip4j/model/i;

    move-result-object v0

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid zip64 end of central directory locator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/l;->e()Lnet/lingala/zip4j/model/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/i;->a()J

    move-result-wide v0

    .line 565
    cmp-long v2, v0, v9

    if-gez v2, :cond_1

    .line 566
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid offset for start of end of central directory record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_1
    :try_start_0
    iget-object v2, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 572
    new-instance v0, Lnet/lingala/zip4j/model/j;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/j;-><init>()V

    .line 574
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 575
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 576
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 579
    iget-object v4, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v4, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 580
    invoke-static {v2}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v4

    .line 581
    int-to-long v5, v4

    const-wide/32 v7, 0x6064b50

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 582
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid signature for zip64 end of central directory record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 584
    :cond_2
    int-to-long v4, v4

    :try_start_1
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/j;->a(J)V

    .line 587
    iget-object v4, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v4, v3}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 588
    invoke-static {v3}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/j;->b(J)V

    .line 592
    iget-object v4, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v4, v1}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 593
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/j;->a(I)V

    .line 596
    iget-object v4, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v4, v1}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 597
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->b(I)V

    .line 600
    iget-object v1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 601
    invoke-static {v2}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->c(I)V

    .line 604
    iget-object v1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v2}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 605
    invoke-static {v2}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->d(I)V

    .line 609
    iget-object v1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v3}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 610
    invoke-static {v3}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/j;->c(J)V

    .line 614
    iget-object v1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v3}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 615
    invoke-static {v3}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/j;->d(J)V

    .line 619
    iget-object v1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v3}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 620
    invoke-static {v3}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/j;->e(J)V

    .line 623
    iget-object v1, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v3}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 624
    invoke-static {v3}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/j;->f(J)V

    .line 629
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/j;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x2c

    sub-long/2addr v1, v3

    .line 630
    cmp-long v3, v1, v9

    if-lez v3, :cond_3

    .line 631
    long-to-int v1, v1

    new-array v1, v1, [B

    .line 632
    iget-object v2, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v2, v1}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 633
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/j;->a([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 636
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Lnet/lingala/zip4j/model/f;)Lnet/lingala/zip4j/model/g;
    .locals 10

    .prologue
    .line 827
    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    .line 828
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid read parameters for local header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->i()J

    move-result-wide v0

    .line 833
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->s()Lnet/lingala/zip4j/model/k;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 834
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->s()Lnet/lingala/zip4j/model/k;

    move-result-object v2

    .line 835
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/k;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_14

    .line 836
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->i()J

    move-result-wide v0

    move-wide v1, v0

    .line 840
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    .line 841
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid local header offset"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_2
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 848
    new-instance v3, Lnet/lingala/zip4j/model/g;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/g;-><init>()V

    .line 850
    const/4 v0, 0x2

    new-array v4, v0, [B

    .line 851
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 852
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v5}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 856
    invoke-static {v5}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v0

    .line 857
    int-to-long v6, v0

    const-wide/32 v8, 0x4034b50

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 858
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid local header signature for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :catch_0
    move-exception v0

    .line 992
    new-instance v1, Lnet/lingala/zip4j/exception/a;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 860
    :cond_3
    :try_start_1
    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->a(I)V

    .line 864
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v4}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 865
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v0

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->b(I)V

    .line 869
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v4}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 870
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->b(Z)V

    .line 871
    const/4 v0, 0x0

    aget-byte v6, v4, v0

    .line 872
    and-int/lit8 v0, v6, 0x1

    .line 873
    if-eqz v0, :cond_4

    .line 874
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->i()V

    .line 876
    :cond_4
    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/g;->a([B)V

    .line 880
    invoke-static {v6}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_5

    .line 882
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x31

    if-ne v0, v7, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->a(Z)V

    .line 885
    :cond_5
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v4}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 886
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v0

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->c(I)V

    .line 890
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v5}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 891
    invoke-static {v5}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v0

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->d(I)V

    .line 895
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v5}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 896
    invoke-static {v5}, Lnet/lingala/zip4j/util/b;->b([B)I

    move-result v0

    int-to-long v7, v0

    invoke-virtual {v3, v7, v8}, Lnet/lingala/zip4j/model/g;->a(J)V

    .line 897
    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->b([B)V

    .line 901
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v5}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 902
    invoke-static {v5}, Lnet/lingala/zip4j/core/a;->a([B)[B

    move-result-object v0

    .line 903
    invoke-static {v0}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lnet/lingala/zip4j/model/g;->b(J)V

    .line 907
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v5}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 908
    invoke-static {v5}, Lnet/lingala/zip4j/core/a;->a([B)[B

    move-result-object v0

    .line 909
    invoke-static {v0}, Lnet/lingala/zip4j/util/b;->a([B)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lnet/lingala/zip4j/model/g;->c(J)V

    .line 913
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v4}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 914
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v5

    .line 915
    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/g;->e(I)V

    .line 919
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0, v4}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 920
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lnet/lingala/zip4j/util/b;->a([BI)I

    move-result v4

    .line 921
    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/g;->f(I)V

    .line 922
    const/16 v0, 0x1e

    .line 925
    if-lez v5, :cond_a

    .line 926
    new-array v0, v5, [B

    .line 927
    iget-object v7, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v7, v0}, Lnet/lingala/zip4j/core/a;->a(Ljava/io/RandomAccessFile;[B)[B

    .line 931
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->n()Z

    move-result v7

    invoke-static {v0, v7}, Lnet/lingala/zip4j/util/c;->a([BZ)Ljava/lang/String;

    move-result-object v0

    .line 933
    if-nez v0, :cond_8

    .line 934
    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "file name is null, cannot assign file name to local file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 882
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 937
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_9

    .line 938
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "file.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 941
    :cond_9
    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->a(Ljava/lang/String;)V

    .line 942
    add-int/lit8 v0, v5, 0x1e

    .line 948
    :goto_3
    iget-object v5, p0, Lnet/lingala/zip4j/core/a;->a:Ljava/io/RandomAccessFile;

    if-nez v5, :cond_b

    new-instance v0, Lnet/lingala/zip4j/exception/a;

    const-string/jumbo v1, "invalid file handler when trying to read extra data record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_a
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/g;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 948
    :cond_b
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->e()I

    move-result v5

    if-lez v5, :cond_c

    invoke-direct {p0, v5}, Lnet/lingala/zip4j/core/a;->a(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/g;->a(Ljava/util/ArrayList;)V

    .line 949
    :cond_c
    add-int/2addr v0, v4

    .line 951
    int-to-long v4, v0

    add-long v0, v1, v4

    invoke-virtual {v3, v0, v1}, Lnet/lingala/zip4j/model/g;->d(J)V

    .line 954
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->p()[C

    move-result-object v0

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->a([C)V

    .line 956
    invoke-static {v3}, Lnet/lingala/zip4j/core/a;->a(Lnet/lingala/zip4j/model/g;)V

    .line 958
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 960
    :cond_d
    :goto_4
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 962
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->j()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_e

    .line 965
    and-int/lit8 v0, v6, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_13

    .line 967
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->g(I)V

    .line 977
    :cond_e
    :goto_5
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->b()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_f

    .line 978
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->c()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lnet/lingala/zip4j/model/g;->a(J)V

    .line 979
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->q()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->b([B)V

    .line 982
    :cond_f
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->c()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_10

    .line 983
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->d()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lnet/lingala/zip4j/model/g;->b(J)V

    .line 986
    :cond_10
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->d()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_11

    .line 987
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/f;->e()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lnet/lingala/zip4j/model/g;->c(J)V

    .line 990
    :cond_11
    return-object v3

    .line 958
    :cond_12
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/core/a;->a(Ljava/util/ArrayList;)Lnet/lingala/zip4j/model/a;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->a(Lnet/lingala/zip4j/model/a;)V

    const/16 v0, 0x63

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->g(I)V

    goto :goto_4

    .line 969
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/g;->g(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_14
    move-wide v1, v0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Lnet/lingala/zip4j/model/l;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lnet/lingala/zip4j/model/l;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/l;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    .line 77
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/l;->b(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/a;->a()Lnet/lingala/zip4j/model/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->a(Lnet/lingala/zip4j/model/d;)V

    .line 82
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/a;->c()Lnet/lingala/zip4j/model/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->a(Lnet/lingala/zip4j/model/i;)V

    .line 84
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/l;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/a;->d()Lnet/lingala/zip4j/model/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->a(Lnet/lingala/zip4j/model/j;)V

    .line 86
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/l;->f()Lnet/lingala/zip4j/model/j;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/l;->f()Lnet/lingala/zip4j/model/j;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/j;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 88
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->a(Z)V

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    invoke-direct {p0}, Lnet/lingala/zip4j/core/a;->b()Lnet/lingala/zip4j/model/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->a(Lnet/lingala/zip4j/model/b;)V

    .line 96
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    return-object v0

    .line 90
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/core/a;->b:Lnet/lingala/zip4j/model/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/l;->a(Z)V

    goto :goto_0
.end method

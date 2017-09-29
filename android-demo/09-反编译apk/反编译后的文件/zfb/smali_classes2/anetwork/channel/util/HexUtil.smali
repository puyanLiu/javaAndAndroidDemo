.class public Lanetwork/channel/util/HexUtil;
.super Ljava/lang/Object;
.source "HexUtil.java"


# direct methods
.method public static a(Ljava/lang/String;)[B
    .locals 7

    .prologue
    .line 5
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 16
    :cond_1
    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 11
    new-array v0, v2, [B

    .line 12
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 13
    mul-int/lit8 v4, v1, 0x2

    .line 14
    aget-char v5, v3, v4

    const-string/jumbo v6, "0123456789ABCDEF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    int-to-byte v5, v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-char v4, v3, v4

    const-string/jumbo v6, "0123456789ABCDEF"

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    int-to-byte v4, v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 12
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

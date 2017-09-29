.class public Lcom/alipay/mobile/rome/syncsdk/util/StringUtilsLink;
.super Ljava/lang/Object;
.source "StringUtilsLink.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayAppend([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    .line 65
    if-nez p0, :cond_0

    .line 68
    new-array p0, v1, [Ljava/lang/String;

    .line 70
    :cond_0
    if-nez p1, :cond_3

    move v0, v1

    .line 73
    :goto_0
    array-length v3, p0

    .line 74
    add-int v4, v3, v0

    new-array v4, v4, [Ljava/lang/String;

    .line 79
    :goto_1
    if-lt v1, v3, :cond_2

    .line 83
    if-ne v0, v2, :cond_1

    .line 84
    aput-object p1, v4, v3

    .line 87
    :cond_1
    return-object v4

    .line 80
    :cond_2
    aget-object v5, p0, v1

    aput-object v5, v4, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static arrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    const-string/jumbo v1, ""

    .line 43
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 50
    return-object v0

    .line 44
    :cond_0
    if-lez v1, :cond_1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, p0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static isContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    move v0, v1

    .line 102
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 108
    :goto_1
    return v1

    .line 103
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const/4 v1, 0x1

    .line 105
    goto :goto_1

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static strToArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v0, ","

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    return-object v2

    .line 26
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

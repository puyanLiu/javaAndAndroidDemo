.class public Lcom/alipay/mobile/socialsdk/api/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWordCount(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 23
    return v1

    .line 16
    :cond_0
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 17
    if-ltz v2, :cond_1

    const/16 v3, 0xff

    if-gt v2, v3, :cond_1

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 15
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

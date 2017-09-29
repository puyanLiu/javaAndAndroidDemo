.class Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier$1;
.super Ljava/lang/Object;
.source "EmotionParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 445
    invoke-static {p1}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->access$2(Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;)I

    move-result v2

    invoke-static {p2}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->access$2(Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 446
    invoke-static {p1}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->access$3(Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;)I

    move-result v2

    invoke-static {p2}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->access$3(Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;)I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 449
    goto :goto_0

    .line 452
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->access$2(Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;)I

    move-result v2

    invoke-static {p2}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->access$2(Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;)I

    move-result v3

    if-le v2, v3, :cond_0

    move v0, v1

    .line 455
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    check-cast p2, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier$1;->compare(Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;)I

    move-result v0

    return v0
.end method

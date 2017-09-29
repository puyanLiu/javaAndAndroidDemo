.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftStorage;
.super Ljava/lang/Object;
.source "Amnet.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/amnet/Storage;


# instance fields
.field private dictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftStorage;->dictionary:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$1;)V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftStorage;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommon(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftStorage;->dictionary:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSecure(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return-object v0
.end method

.method public putCommon(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/amnet/Amnet$DftStorage;->dictionary:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    return-void
.end method

.method public putSecure(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 681
    return-void
.end method

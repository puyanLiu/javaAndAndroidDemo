.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/p;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/h;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/i;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/h;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onShopIconDBChangedEvent"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/i;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/h;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/h;->a(Ljava/util/Map;)V

    return-void
.end method

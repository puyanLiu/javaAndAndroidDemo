.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/r;

.field private final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/r;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/r;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/r;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/r;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/q;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/q;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/q;)Lcom/alipay/android/phone/nfd/nfdservice/biz/p;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/s;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/p;->a(Ljava/util/Map;)V

    return-void
.end method

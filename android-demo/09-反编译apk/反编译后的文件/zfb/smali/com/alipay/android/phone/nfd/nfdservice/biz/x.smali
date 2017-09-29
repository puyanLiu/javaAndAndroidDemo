.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/w;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/w;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/w;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/v;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/v;->c(Lcom/alipay/android/phone/nfd/nfdservice/biz/v;)Lcom/alipay/android/phone/nfd/nfdservice/biz/u;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/x;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class final Lcom/alipay/mobile/security/authcenter/b/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/b/a/a;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/b/a/a;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 2

    const-string/jumbo v0, "registbindToFundBao"

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->c:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->c(Lcom/alipay/mobile/security/authcenter/b/a/a;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "registBindToCard"

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->c:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Z)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/h;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->b(Lcom/alipay/mobile/security/authcenter/b/a/a;)V

    goto :goto_1
.end method

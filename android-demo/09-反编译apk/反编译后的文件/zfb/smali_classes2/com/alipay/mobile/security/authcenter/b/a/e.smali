.class final Lcom/alipay/mobile/security/authcenter/b/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/b/a/a;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/b/a/a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/e;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    iput-boolean p2, p0, Lcom/alipay/mobile/security/authcenter/b/a/e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/e;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/e;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->b(Lcom/alipay/mobile/security/authcenter/b/a/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/e;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->c(Lcom/alipay/mobile/security/authcenter/b/a/a;)V

    goto :goto_0
.end method

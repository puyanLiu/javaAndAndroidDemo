.class final Lcom/alipay/mobile/security/authcenter/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/b/a/a;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/b/a/a;ZLandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/g;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    iput-boolean p2, p0, Lcom/alipay/mobile/security/authcenter/b/a/g;->b:Z

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/b/a/g;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/g;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/g;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->b(Lcom/alipay/mobile/security/authcenter/b/a/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/g;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->d(Lcom/alipay/mobile/security/authcenter/b/a/a;)Lcom/alipay/mobile/framework/service/common/SchemeService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/g;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/g;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->c(Lcom/alipay/mobile/security/authcenter/b/a/a;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/g;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->e(Lcom/alipay/mobile/security/authcenter/b/a/a;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v1, "isValidScheme"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class final Lcom/alipay/mobile/security/authcenter/b/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/b/a/a;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

.field private final synthetic c:Landroid/os/Bundle;

.field private final synthetic d:Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/b/a/a;Lcom/alipay/mobile/framework/service/ext/security/GestureService;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/f;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/b/a/f;->b:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/b/a/f;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/alipay/mobile/security/authcenter/b/a/f;->d:Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/f;->b:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/f;->c:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/b/a/f;->d:Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    return-void
.end method

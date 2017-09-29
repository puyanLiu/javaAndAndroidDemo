.class final Lcom/alipay/android/widget/security/msgreceiver/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/msgreceiver/SecurityInitMsgReceiver;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/content/Intent;

.field private final synthetic d:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/msgreceiver/SecurityInitMsgReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/msgreceiver/a;->a:Lcom/alipay/android/widget/security/msgreceiver/SecurityInitMsgReceiver;

    iput-object p2, p0, Lcom/alipay/android/widget/security/msgreceiver/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/widget/security/msgreceiver/a;->c:Landroid/content/Intent;

    iput-object p4, p0, Lcom/alipay/android/widget/security/msgreceiver/a;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/a;->a:Lcom/alipay/android/widget/security/msgreceiver/SecurityInitMsgReceiver;

    iget-object v1, p0, Lcom/alipay/android/widget/security/msgreceiver/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/widget/security/msgreceiver/a;->c:Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/android/widget/security/msgreceiver/a;->d:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/msgreceiver/SecurityInitMsgReceiver;->a(Lcom/alipay/android/widget/security/msgreceiver/SecurityInitMsgReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method

.class final Lcom/alipay/android/app/ui/quickpay/lua/extension/a;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/luaj/vm2/LuaValue;

.field final synthetic c:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;ILorg/luaj/vm2/LuaValue;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;->c:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;->a:I

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;->b:Lorg/luaj/vm2/LuaValue;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;->c:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->access$000(Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;)Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;->getContext()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;->c:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;->a:I

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->access$100(Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;I)Z

    .line 318
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/a;->c:Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;->access$000(Lcom/alipay/android/app/ui/quickpay/lua/extension/WinLib;)Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IWinScriptable;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/lua/extension/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/b;-><init>(Lcom/alipay/android/app/ui/quickpay/lua/extension/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

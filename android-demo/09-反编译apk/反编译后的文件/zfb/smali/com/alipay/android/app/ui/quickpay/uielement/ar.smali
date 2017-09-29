.class final Lcom/alipay/android/app/ui/quickpay/uielement/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ar;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/ar;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->u()V

    .line 142
    :cond_0
    return-void
.end method

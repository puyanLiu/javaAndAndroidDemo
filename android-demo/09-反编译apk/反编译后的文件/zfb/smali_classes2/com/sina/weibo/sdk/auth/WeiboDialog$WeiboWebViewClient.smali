.class Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WeiboDialog.java"


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private a:Z

.field final synthetic this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "WeiboDialog.java"

    const-class v2, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onPageStarted"

    const-string/jumbo v3, "com.sina.weibo.sdk.auth.WeiboDialog$WeiboWebViewClient"

    const-string/jumbo v4, "android.webkit.WebView:java.lang.String:android.graphics.Bitmap"

    const-string/jumbo v5, "view:url:favicon"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x137

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onPageFinished"

    const-string/jumbo v3, "com.sina.weibo.sdk.auth.WeiboDialog$WeiboWebViewClient"

    const-string/jumbo v4, "android.webkit.WebView:java.lang.String"

    const-string/jumbo v5, "view:url"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x14b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private constructor <init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;)V
    .locals 1

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;-><init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    sget-object v0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 331
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/aspect/Monitor;->ajc$before$com_alipay_mobile_aspect_Monitor$14$9793a1cd(Lorg/aspectj/lang/JoinPoint;)V

    const-string/jumbo v0, "WeiboDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageFinished URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$3(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$4(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$4(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$5(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 337
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    sget-object v0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 311
    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/aspect/Monitor;->ajc$before$com_alipay_mobile_aspect_Monitor$13$523d7528(Lorg/aspectj/lang/JoinPoint;)V

    const-string/jumbo v0, "WeiboDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageStarted URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$1(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/WeiboAuth;->getAuthInfo()Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/WeiboAuth$AuthInfo;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->a:Z

    if-nez v0, :cond_1

    .line 314
    iput-boolean v3, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->a:Z

    .line 315
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0, p2}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$2(Lcom/sina/weibo/sdk/auth/WeiboDialog;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 317
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->dismiss()V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 324
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$3(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$4(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$4(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$4(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 298
    const-string/jumbo v0, "WeiboDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceivedError: errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 299
    const-string/jumbo v2, ", description = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    const-string/jumbo v2, ", failingUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$0(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-static {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->access$0(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    move-result-object v0

    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboDialogException;

    invoke-direct {v1, p3, p2, p4}, Lcom/sina/weibo/sdk/exception/WeiboDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->dismiss()V

    .line 307
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 283
    const-string/jumbo v0, "WeiboDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "load URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v1, "address"

    const-string/jumbo v2, "sms:"

    const-string/jumbo v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const-string/jumbo v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;->this$0:Lcom/sina/weibo/sdk/auth/WeiboDialog;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 291
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

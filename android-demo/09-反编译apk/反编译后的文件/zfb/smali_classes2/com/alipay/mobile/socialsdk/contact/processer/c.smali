.class final Lcom/alipay/mobile/socialsdk/contact/processer/c;
.super Ljava/lang/Object;
.source "AccountQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/c;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/c;->b:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/processer/c;)Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/c;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/c;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->d(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/c;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->d(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/c;->b:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    .line 121
    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/processer/d;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/processer/d;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/c;)V

    move-object v5, v1

    move-object v6, v1

    .line 120
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/c;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->f(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/c;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->f(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/c;->b:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    .line 131
    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/processer/e;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/processer/e;-><init>(Lcom/alipay/mobile/socialsdk/contact/processer/c;)V

    move-object v5, v1

    move-object v6, v1

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

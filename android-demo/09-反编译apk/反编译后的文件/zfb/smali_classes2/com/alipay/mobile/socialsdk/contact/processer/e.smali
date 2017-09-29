.class final Lcom/alipay/mobile/socialsdk/contact/processer/e;
.super Ljava/lang/Object;
.source "AccountQueryHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/processer/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/processer/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/e;->a:Lcom/alipay/mobile/socialsdk/contact/processer/c;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/e;->a:Lcom/alipay/mobile/socialsdk/contact/processer/c;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/c;->a(Lcom/alipay/mobile/socialsdk/contact/processer/c;)Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V

    .line 137
    return-void
.end method

.class final Lcom/alipay/mobile/socialsdk/contact/processer/f;
.super Ljava/lang/Object;
.source "AccountQueryHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/f;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/f;->a:Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V

    .line 174
    return-void
.end method

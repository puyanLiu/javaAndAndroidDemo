.class final Lcom/alipay/mobile/socialsdk/contact/ui/ae;
.super Ljava/lang/Object;
.source "PersonalProfileActivity.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ae;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ae;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->c(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ae;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->loadGroupNickName()V

    .line 278
    :cond_0
    return-void
.end method

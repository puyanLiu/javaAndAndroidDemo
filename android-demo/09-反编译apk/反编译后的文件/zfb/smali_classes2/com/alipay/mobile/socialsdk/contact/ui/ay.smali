.class final Lcom/alipay/mobile/socialsdk/contact/ui/ay;
.super Ljava/lang/Object;
.source "PersonalProfileMoreActivity.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ay;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ay;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->loadFriendInfo()V

    .line 61
    return-void
.end method

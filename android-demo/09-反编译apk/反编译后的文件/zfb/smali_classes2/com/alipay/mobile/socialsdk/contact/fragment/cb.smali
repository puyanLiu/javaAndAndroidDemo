.class final Lcom/alipay/mobile/socialsdk/contact/fragment/cb;
.super Ljava/lang/Object;
.source "PhoneBookSingleFragment.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cb;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cb;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->sendLoadMessage()V

    .line 383
    return-void
.end method

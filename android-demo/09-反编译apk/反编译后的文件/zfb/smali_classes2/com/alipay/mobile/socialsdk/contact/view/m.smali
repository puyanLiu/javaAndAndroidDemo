.class final Lcom/alipay/mobile/socialsdk/contact/view/m;
.super Ljava/lang/Object;
.source "VarifyNameMgrForContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/l;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/m;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/m;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a(Ljava/lang/String;Z)V

    .line 64
    return-void
.end method

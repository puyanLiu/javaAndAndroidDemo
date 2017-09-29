.class final Lcom/alipay/mobile/socialsdk/contact/view/q;
.super Ljava/lang/Object;
.source "VarifyNameMgrForContacts.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/l;

.field private final synthetic b:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/l;Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/q;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/q;->b:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/q;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/q;->b:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;

    iget-object v1, v1, Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;->memo:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a(Ljava/lang/String;Z)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/q;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/q;->b:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a(Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;)V

    .line 95
    return-void
.end method

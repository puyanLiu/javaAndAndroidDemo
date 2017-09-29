.class final Lcom/alipay/mobile/socialsdk/contact/view/p;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/p;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/p;->b:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/p;->a:Lcom/alipay/mobile/socialsdk/contact/view/l;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/view/l;->a:Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/view/p;->b:Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/VarifyNameMgrForContacts;->a(Lcom/alipay/mobileprod/biz/contact/dto/ValidateReceiveNameResp;)V

    .line 85
    return-void
.end method

.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;
.super Ljava/lang/Object;
.source "UnreadModel.java"


# instance fields
.field public lastAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field public unreadNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;->unreadNum:I

    .line 6
    return-void
.end method

.class public Lcom/alipay/mobilewealth/adapterservice/model/BaseMobileWealthRes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public actionUrl:Ljava/lang/String;

.field public followAction:Ljava/lang/String;

.field public originalSystem:Ljava/lang/String;

.field public passwordTokenCreator:Lcom/alipay/mobilewealth/adapterservice/model/MWPasswordTokenCreator;

.field public resultCode:Ljava/lang/String;

.field public resultDesc:Ljava/lang/String;

.field public resultMsgArgs:[Ljava/lang/String;

.field public resultView:Ljava/lang/String;

.field public showType:I

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobilewealth/adapterservice/model/BaseMobileWealthRes;->success:Z

    iput v0, p0, Lcom/alipay/mobilewealth/adapterservice/model/BaseMobileWealthRes;->showType:I

    return-void
.end method

.class public Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;
.super Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
.source "APAdvertisementView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;

    .line 33
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->c:Ljava/util/Map;

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;

    .line 33
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->c:Ljava/util/Map;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;

    .line 33
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->c:Ljava/util/Map;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;

    .line 33
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->c:Ljava/util/Map;

    .line 51
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->setSpaceCode(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;

    .line 33
    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->c:Ljava/util/Map;

    .line 58
    invoke-virtual {p0, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->setOnShowNotify(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->setSpaceCode(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 164
    :cond_0
    const-class v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->c(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 163
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a:Ljava/lang/String;

    .line 166
    new-instance v2, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;Landroid/app/Activity;)V

    .line 165
    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    if-eqz p2, :cond_0

    .line 112
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/i/c;->e:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->setSpaceCode(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APAdvertisementView initView spaceCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->setTag(Ljava/lang/Object;)V

    .line 120
    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a(Landroid/app/Activity;Ljava/util/Map;Z)V

    .line 121
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->registerAdvertisementViewCallBack()V

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1, p0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/h;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Z

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "APAdvertisementView show onShowNotify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;->onShow(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSpaceCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onAttachedToWindow()V

    .line 77
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->onDetachedFromWindow()V

    .line 82
    return-void
.end method

.method public registerAdvertisementViewCallBack()V
    .locals 3

    .prologue
    .line 93
    const-class v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->c(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$1;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;)V

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->registerAdvertisementViewCallBack(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;)V

    .line 107
    return-void
.end method

.method public setOnShowNotify(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$IonShowNotify;

    .line 37
    return-void
.end method

.method public setSpaceCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public unregisterAdvertisementViewCallBack()V
    .locals 3

    .prologue
    .line 86
    const-class v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->c(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->unregisterAdvertisementViewCallBack(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public updateSpaceCode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->c:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->updateSpaceCode(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 133
    return-void
.end method

.method public updateSpaceCode(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "APAdvertisementView updateSpaceCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string/jumbo v1, " extInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " immediately:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 149
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->c:Ljava/util/Map;

    .line 153
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->setSpaceCode(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0, p2, p3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->a(Landroid/app/Activity;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "WebPageMediaInfo.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private thumb:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private ui:Lcom/alipay/mobile/personalbase/share/ui/Ui;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUi()Lcom/alipay/mobile/personalbase/share/ui/Ui;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->ui:Lcom/alipay/mobile/personalbase/share/ui/Ui;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->desc:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->image:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->thumb:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->title:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUi(Lcom/alipay/mobile/personalbase/share/ui/Ui;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/WebPageMediaInfo;->ui:Lcom/alipay/mobile/personalbase/share/ui/Ui;

    .line 25
    return-void
.end method

.class public Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;
.super Ljava/lang/Object;
.source "CityInfo.java"


# instance fields
.field private cityName:Ljava/lang/String;

.field private isSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;->isSelected:Z

    return v0
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;->cityName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/cityselect/model/CityInfo;->isSelected:Z

    .line 14
    return-void
.end method

.class public Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;
.super Ljava/lang/Object;
.source "CountryInfo.java"


# instance fields
.field private countryName:Ljava/lang/String;

.field private isSelected:Z

.field private provinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->provinces:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public addProvinces(Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->provinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->provinces:Ljava/util/List;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->isSelected:Z

    return v0
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->countryName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setProvinces(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/cityselect/model/ProvinceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->provinces:Ljava/util/List;

    .line 40
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/cityselect/model/CountryInfo;->isSelected:Z

    .line 16
    return-void
.end method

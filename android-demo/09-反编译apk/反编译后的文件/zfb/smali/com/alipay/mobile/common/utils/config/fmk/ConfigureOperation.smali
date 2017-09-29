.class public interface abstract Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperation;
.super Ljava/lang/Object;
.source "ConfigureOperation.java"


# virtual methods
.method public abstract equalsInt(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;I)Z
.end method

.method public abstract equalsLong(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;J)Z
.end method

.method public abstract equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z
.end method

.method public abstract getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)I
.end method

.method public abstract getIntValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;I)I
.end method

.method public abstract getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J
.end method

.method public abstract getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;J)J
.end method

.method public abstract getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;
.end method

.method public abstract getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringValueList(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStringValueList(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isLoadedConfig()Z
.end method

.method public abstract mergeConfig(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)V
.end method

.method public abstract updateFromJsonStrAndSave(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract updateFromMapAndSave(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract updateFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end method

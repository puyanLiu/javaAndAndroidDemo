.class Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity.java"

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFailed(I)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$5(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Z)V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 235
    sget v1, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_lbs_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$11(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Lcom/alipay/mobile/commonui/widget/APTableView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$4(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "init onLocationUpdate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v0, v9}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$5(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Z)V

    .line 198
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getDistrict()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    .line 203
    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$4(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "country=, city="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", district="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 203
    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$6(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 206
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v4, v3, v9}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$6(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAdCode()Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$4(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "adcode = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v5, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v5, v4}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$7(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$8(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 218
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    sget v5, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_beijing:I

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 219
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    sget v5, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_shanghai:I

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    sget v5, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_tianjin:I

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    sget v5, Lcom/alipay/mobile/beehive/R$string;->provincecityselect_chongqing:I

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v3, v2, v9}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$6(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 223
    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$9(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/lang/String;)V

    .line 227
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$4(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locationStr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$10(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$11(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Lcom/alipay/mobile/commonui/widget/APTableView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$10(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    .line 229
    return-void

    .line 213
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity$1;->this$0:Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;->access$9(Lcom/alipay/mobile/beehive/cityselect/ui/ProvinceCityListActivity;Ljava/lang/String;)V

    goto :goto_1
.end method

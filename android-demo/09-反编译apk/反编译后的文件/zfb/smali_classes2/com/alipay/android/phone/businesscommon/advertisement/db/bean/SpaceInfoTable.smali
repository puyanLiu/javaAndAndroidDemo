.class public Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;
.super Ljava/lang/Object;
.source "SpaceInfoTable.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALWAYS:Ljava/lang/String; = "ALWAYS"

.field public static final APPID:Ljava/lang/String; = "appId"

.field public static final CLOSE:Ljava/lang/String; = "close"

.field public static final CLOSE_AFTER_CLICK:Ljava/lang/String; = "CLOSE_AFTER_CLICK"

.field public static final CLOSE_AFTER_JUMP:Ljava/lang/String; = "CLOSE_AFTER_JUMP"

.field public static final CLOSE_AFTER_MOMENT:Ljava/lang/String; = "CLOSE_AFTER_MOMENT"

.field public static final CLOSE_AFTER_SHUT:Ljava/lang/String; = "CLOSE_AFTER_SHUT"

.field public static final CLOSE_AFTER_TIMES:Ljava/lang/String; = "CLOSE_AFTER_TIMES"

.field public static final CLOSE_EVERYDAY_CLICK:Ljava/lang/String; = "CLOSE_EVERYDAY_CLICK"

.field public static final CLOSE_EVERYDAY_TIMES:Ljava/lang/String; = "CLOSE_EVERYDAY_TIMES"

.field public static final DISPLAYMAX:Ljava/lang/String; = "displayMaxCount"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final LOCATION_BOTTOM:Ljava/lang/String; = "BOTTOM"

.field public static final LOCATION_CENTER:Ljava/lang/String; = "CENTER"

.field public static final LOCATION_FLOATTOP:Ljava/lang/String; = "FLOATTOP"

.field public static final LOCATION_FOOTER:Ljava/lang/String; = "FOOTER"

.field public static final LOCATION_FULL:Ljava/lang/String; = "FULL"

.field public static final LOCATION_HEADER:Ljava/lang/String; = "HEADER"

.field public static final LOCATION_LISTHEADER:Ljava/lang/String; = "LISTHEADER"

.field public static final LOCATION_TOP:Ljava/lang/String; = "TOP"

.field public static final MULTISTYLE:Ljava/lang/String; = "multiStyle"

.field public static final MULTISTYLE_ANNOUNCEMENT:Ljava/lang/String; = "ANNOUNCEMENT"

.field public static final MULTISTYLE_BANNER:Ljava/lang/String; = "BANNER"

.field public static final MULTISTYLE_LIST:Ljava/lang/String; = "LIST"

.field public static final MULTISTYLE_NOTIFY:Ljava/lang/String; = "NOTIFY"

.field public static final MULTISTYLE_ROTATION:Ljava/lang/String; = "ROTATION"

.field public static final PERIOD_SHOW:Ljava/lang/String; = "PERIOD_SHOW"

.field public static final REQRPCTIME:Ljava/lang/String; = "reqRpcTime"

.field public static final ROTATIONTIME:Ljava/lang/String; = "rotationTime"

.field public static final SPACECODE:Ljava/lang/String; = "spaceCode"

.field public static final SPACEOBJECTLIST:Ljava/lang/String; = "spaceObjectList"

.field public static final SPACEUPDATEPOLICY_ALWAYS:Ljava/lang/String; = "ALWAYS"

.field public static final SPACEUPDATEPOLICY_NEVER:Ljava/lang/String; = "NEVER"

.field public static final SPACEUPDATEPOLICY_ONCE:Ljava/lang/String; = "ONCE"

.field public static final SPACEUPDATEPOLICY_TIMER:Ljava/lang/String; = "TIMER"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UPDATEPOLICY:Ljava/lang/String; = "updatePolicy"

.field public static final VIEWID:Ljava/lang/String; = "viewId"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public close:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public displayMaxCount:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public location:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public modifyTime:J

.field public multiStyle:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public reqRpcTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public rotationTime:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public spaceCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        unique = true
    .end annotation
.end field

.field public spaceObjectList:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public updatePolicy:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public viewId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->modifyTime:J

    .line 12
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)I
    .locals 5

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 189
    .line 191
    const-string/jumbo v0, "*"

    iget-object v3, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 194
    :goto_0
    const-string/jumbo v3, "*"

    iget-object v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 197
    :cond_0
    const-string/jumbo v3, "*"

    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    :goto_1
    const-string/jumbo v2, "*"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 203
    :cond_1
    sub-int v0, v1, v0

    return v0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->compareTo(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SpaceInfoTable [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", spaceCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", viewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->viewId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string/jumbo v1, ", spaceObjectList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceObjectList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", updatePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->updatePolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", reqRpcTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->reqRpcTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", multiStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->multiStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rotationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->rotationTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", close="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->close:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", displayMaxCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->displayMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, ", modifyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->modifyTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

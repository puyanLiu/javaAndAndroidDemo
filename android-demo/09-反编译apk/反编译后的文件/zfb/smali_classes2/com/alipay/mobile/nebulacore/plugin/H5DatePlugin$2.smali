.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;
.super Landroid/app/DatePickerDialog;
.source "H5DatePlugin.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$2;->a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 102
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

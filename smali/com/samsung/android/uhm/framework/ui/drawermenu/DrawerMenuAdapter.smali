.class public Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "DrawerMenuAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAppIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "DrawerMenuAdapter"

    sput-object v0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "menuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mSelectedAppIcon:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mMenuList:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method private getAppIcon(Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "menuitem"    # Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;

    .prologue
    .line 115
    new-instance v0, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;

    invoke-direct {v0}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/uhm/framework/appregistry/RegistryDbManagerWithProvider;->queryAppRegistryImageData(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getStatus(I)Ljava/lang/String;
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 102
    packed-switch p1, :pswitch_data_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$string;->bt_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$string;->bt_unpaired:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$string;->bt_disconnected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/uhm/framework/ui/R$string;->bt_connected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertedView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    iget-object v7, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    .line 65
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 66
    .local v3, "inflater":Landroid/view/LayoutInflater;
    move-object v6, p2

    .line 68
    .local v6, "view":Landroid/view/View;
    sget v7, Lcom/samsung/android/uhm/framework/ui/R$layout;->drawer_menu_view:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .end local v6    # "view":Landroid/view/View;
    check-cast v6, Landroid/widget/LinearLayout;

    .line 70
    .restart local v6    # "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 71
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;

    invoke-virtual {v7}, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 72
    iget-object v2, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mSelectedAppIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    :goto_0
    if-eqz v2, :cond_0

    .line 78
    sget v7, Lcom/samsung/android/uhm/framework/ui/R$id;->app_icon:I

    .line 79
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    .local v1, "drawerMenuAppIcon":Landroid/widget/ImageView;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .end local v1    # "drawerMenuAppIcon":Landroid/widget/ImageView;
    :cond_0
    sget v7, Lcom/samsung/android/uhm/framework/ui/R$id;->drawer_menu_layout:I

    .line 84
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 85
    .local v4, "textView":Landroid/widget/TextView;
    sget v7, Lcom/samsung/android/uhm/framework/ui/R$id;->status:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 86
    .local v5, "textView2":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;

    invoke-virtual {v7}, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v7, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;

    invoke-virtual {v7}, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->getDeviceStatus()I

    move-result v0

    .line 89
    .local v0, "connectState":I
    sget-object v8, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "position = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", device connectState:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", deviceId:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;

    invoke-virtual {v7}, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0, v0}, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->getStatus(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v7, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;

    invoke-virtual {v7}, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    iget-object v7, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/uhm/framework/ui/R$color;->drawer_selected_text_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v7, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/uhm/framework/ui/R$color;->drawer_selected_text_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    :cond_1
    return-object v6

    .line 74
    .end local v0    # "connectState":I
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "textView2":Landroid/widget/TextView;
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mMenuList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;

    invoke-direct {p0, v7}, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->getAppIcon(Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public setSelectedAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selectedAppIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/uhm/framework/ui/drawermenu/DrawerMenuAdapter;->mSelectedAppIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    return-void
.end method

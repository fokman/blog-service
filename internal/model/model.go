package model

type Model struct {
	ID         uint32 `gorm:"primary_key" json:"id"`
	CreateBy   string `json:"create_by"`
	ModifiedBy string `json:"modified_by"`
	CreatedOn  uint32 `json:"created_on"`
	ModifiedOn string `json:"modified_on"`
	DeleteOn   string `json:"delete_on"`
	IsDel      uint8  `json:"is_del"`
}

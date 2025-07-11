// Code generated by github.com/99designs/gqlgen, DO NOT EDIT.

package model

type BasicInfo struct {
	ID            string  `json:"id"`
	FirstName     string  `json:"firstName"`
	LastName      string  `json:"lastName"`
	AddtionalName string  `json:"addtionalName"`
	Pronous       *string `json:"pronous,omitempty"`
	Headline      *string `json:"headline,omitempty"`
}

type BasicInfoInput struct {
	FirstName     string  `json:"firstName"`
	LastName      string  `json:"lastName"`
	AddtionalName string  `json:"addtionalName"`
	Pronous       *string `json:"pronous,omitempty"`
	Headline      *string `json:"headline,omitempty"`
}

type Mutation struct {
}

type Query struct {
}
